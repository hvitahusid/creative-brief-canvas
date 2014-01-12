@Pages = new Meteor.Collection('pages')

Router.configure
    layoutTemplate: 'layout'
    autoRender: false


Router.map ->
    @route 'newCanvas',
        path: '/'
        controller: 'CanvasController'

    @route 'canvas',
        path: '/:_id'
        controller: 'CanvasController'
