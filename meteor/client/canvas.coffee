class @CanvasController extends RouteController
    template: 'canvas'

    updateField: _.debounce (field, value) ->
        if field? and value?
            f = {}
            f[field] = value
            Pages.update(Session.get('page')._id, {$set: f})
    , 200

    savePage: ->
        inputs = {}
        $('input, textarea').each ->
            inputs[$(this).attr('name')] = $(this).val()

        pageId = Pages.insert(inputs)

        history.replaceState(null, null, '/' + pageId)

        Session.set('page', Pages.findOne(pageId))

    waitOn: ->
        subscriptions.pages

    data: ->
        window.controller = this
        page = Pages.findOne(this.params._id)
        Session.set('page', page)

        if page
            for fieldset, fields of fieldsets
                for field in fields
                    field.value = page[field.name] or ''

            # Set document title
            if page.product or page.company
                isTrue = (x) -> x
                document.title = [page.product,
                    page.company].filter(isTrue).join(' - ')

        return {
            page: page
            fieldsets: fieldsets
        }


Template.field.rendered = ->
    if this.data.value.length
        $(this.find('.placeholder')).hide()
    else
        $(this.find('.placeholder')).show()


Template.field.helpers
    'focus': -> this.name is Session.get('focusOn')


Template.field.events
    'keyup input, keyup textarea': (event) ->
        $target = $(event.currentTarget)
        if Session.get('page')
            controller.updateField(this.name, $target.val())
        else
            controller.savePage()

        $placeholder = $target.parents('.field').find('.placeholder')
        if $target.val().length
            $placeholder.hide()
        else
            $placeholder.show()

    'focus input, focus textarea': (event) ->
        Session.set('focusOn', this.name)
