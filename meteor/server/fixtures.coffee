Meteor.startup ->
    if Meteor.users.find({username: 'hvitahusid'}).count() is 0
        id = Accounts.createUser
            username: 'hvitahusid'
            email: 'hvitahusid@hvitahusid.is'
            password: 'harri35'
            profile:
                name: 'Hvíta Húsið'

        Roles.addUsersToRoles(id, ['admin', 'user-admin'])
