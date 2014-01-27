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
        page = Pages.findOne(@params._id)
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
    if $(@find('textarea')).length
        if $(@find('textarea')).val().length
            $(@find('.placeholder')).hide()
        else
            $(@find('.placeholder')).show()


Template.field.helpers
    'focus': -> @name is Session.get('focusOn')


Template.field.events
    'keyup input, keyup textarea': (event) ->
        $target = $(event.currentTarget)
        if Session.get('page')
            controller.updateField(@name, $target.val())
        else
            controller.savePage()

        # Hide the placeholder if field has no value; else show it:
        $placeholder = $target.parents('.field').find('.placeholder')
        if $target.val().length
            $placeholder.hide()
        else
            $placeholder.show()

    # Hide the the placeholder on keydown. (Will be shown again on keyup
    # if the input is empty):
    'keydown input, keydown textarea': (event) ->
        $target = $(event.currentTarget)
        $placeholder = $target.parents('.field').find('.placeholder')
        # Unless key pressed is a command key (backspace, shift, ctr, etc.),
        # hide placeholder:
        unless event.keyCode in [8, 9, 13, 16, 17, 18, 91, 93]
            $placeholder.hide()

    'focus input, focus textarea': (event) ->
        Session.set('focusOn', @name)
