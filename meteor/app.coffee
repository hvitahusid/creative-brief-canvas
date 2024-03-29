@Pages = new Meteor.Collection('pages')
@Comments = new Meteor.Collection('comments')

Accounts.config
    sendVerificationEmail: true
    forbidClientAccountCreation: true  # No account creation allowed for now...
    loginExpirationInDays: null

    restrictCreationByEmailDomain: (email) ->
        domain = email.slice(email.lastIndexOf("@") + 1)
        allowed = ['hvitahusid.is']
        return _.contains(allowed, domain)

Pages.allow
    insert: -> true
    update: -> true
    remove: -> true


Comments.allow
    insert: -> true
    update: -> true
    remove: -> true


Router.configure
    layoutTemplate: 'layout'
    autoRender: false

mustBeSignedIn = ->
    unless Meteor.user()
        @render('login')
        @stop()

Router.before(mustBeSignedIn, {except: ['login', 'signup', 'forgotPassword']})

Router.map ->
    @route 'list',
        path: '/list/'
        controller: 'ListController'

    @route 'newCanvas',
        path: '/'
        controller: 'CanvasController'

    @route 'canvas',
        path: '/:_id'
        controller: 'CanvasController'
