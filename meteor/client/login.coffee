Template.login.events "submit #login-form": (e, t) ->
    e.preventDefault()

    username = t.find("#login-username").value
    password = t.find("#login-password").value

    Meteor.loginWithPassword username, password, (err) ->
        if err
            alert err.reason

    return false
