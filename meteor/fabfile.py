from __future__ import with_statement
from StringIO import StringIO
from fabric.api import *
from fabric.contrib.console import confirm
from fabric.contrib.files import exists
import os


env.user = 'hvitahusid'
env.password = 'aVvyTBwqzagB++EBvstqqw'

env.roledefs = {
    'meteor': [
        'nginx.hvitahusid.is',
    ]
}

code_dir = '~/meteor/creativebrief/'


def check_pid(pid):
    """ Check For the existence of a unix pid. """
    if not pid:
        return False

    return exists('/proc/%s' % pid)


def get_pid():
    pid_file = code_dir + 'forever.pid'

    if exists(pid_file):
        fd = StringIO()
        get(pid_file, fd)
        return int(fd.getvalue())


def apt_update():
    sudo('apt-get update')

def apt_install(packages):
    sudo('apt-get install -y %s' % ' '.join(packages))


@roles('meteor')
def server_setup():
    apt_install(['python-software-properties'])
    sudo('add-apt-repository -y ppa:chris-lea/node.js')
    apt_update()
    apt_install(['build-essential', 'nodejs', 'mongodb', 'imagemagick'])
    sudo('npm install -g forever')


@roles('meteor')
def bundle():
    local("mrt bundle creativebrief.tar.gz")


@roles('meteor')
def deploy():
    with settings(warn_only=True):
        run('mkdir -p %s' % code_dir)

        with cd(code_dir):
            run('rm -rf bundle')
            run('rm -rf creativebrief.tar.gz')
            put('creativebrief.tar.gz', code_dir)
            run('tar zxvf creativebrief.tar.gz')

        with cd('%sbundle/programs/server/node_modules' % code_dir):
            run('rm -rf fibers')
            run('npm install fibers@1.0.1')


@roles('meteor')
def start():
    pid = get_pid()

    if check_pid(pid):
        print 'Process is already running...'
        return False

    env = {
        'PORT': '3000',
        'MONGO_URL': 'mongodb://localhost/creativebrief',
        'ROOT_URL': 'http://creativebrief.hvitahusid.is',
    }

    with shell_env(**env):
        run(' '.join([
            'forever start -a',
            '-l {0}forever.log',
            '-o {0}out.log',
            '-e {0}err.log',
            '--pidFile {0}forever.pid',
            '--sourceDir {0}bundle/',
            '--minUptime 5000',
            '--spinSleepTime 3000',
            'main.js',
        ]).format(code_dir))


@roles('meteor')
def stop():
    run('forever stop /home/hvitahusid/meteor/creativebrief/bundle/main.js')


@roles('meteor')
def restart():
    run('forever restart /home/hvitahusid/meteor/creativebrief/bundle/main.js')


@roles('meteor')
def logs():
    run("tail -F %s*.log" % code_dir)
