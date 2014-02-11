
Meteor.publish 'pages', ->
    if @userId
        Pages.find({})

Meteor.publish 'comments', ->
    if @userId
        Comments.find({})
