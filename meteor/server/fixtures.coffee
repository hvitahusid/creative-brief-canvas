Meteor.startup ->
    if Meteor.users.find({username: 'hvitahusid'}).count() is 0
        id = Accounts.createUser
            username: 'hvitahusid'
            email: 'hvitahusid@hvitahusid.is'
            password: 'harri35'
            profile:
                name: 'Hvíta Húsið'

        Roles.addUsersToRoles(id, ['admin', 'user-admin'])

    if Meteor.users.find({username: 'sindri'}).count() is 0
        id = Accounts.createUser
            username: 'sindri'
            email: 'sindri@hvitahusid.is'
            password: 'harri35'
            profile:
                name: 'Sindri Bergmann'

        Roles.addUsersToRoles(id, ['admin', 'user-admin'])

    if Meteor.users.find({username: 'arnar'}).count() is 0
        id = Accounts.createUser
            username: 'arnar'
            email: 'arnar@hvitahusid.is'
            password: 'harri35'
            profile:
                name: 'Arnar Yngvason'

        Roles.addUsersToRoles(id, ['admin', 'user-admin'])
