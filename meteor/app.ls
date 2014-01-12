Router.configure
    layoutTemplate: 'layout'
    autoRender: false


Router.map ->
    @route 'home', {path: '/'}


class homeRouteController extends RouteController
    template: 'home'

    @before: ->
        console.log 'before'

    @after: ->
        console.log 'after'
