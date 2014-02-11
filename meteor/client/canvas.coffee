@addComment = (field, comment, _user_name) ->
    Comments.insert
        page: controller.page._id
        field: field
        content: comment
        _user_name: _user_name


@getComments = (field) ->
    if controller.page
        Comments.find({page: controller.page._id, field: field})


@setTitle = (p) ->
    if p.product or p.company
        isTrue = (x) -> x
        document.title = [p.product, p.company].filter(isTrue).join(' - ')
    else
        document.title = 'Creative Brief'


class @CanvasController extends RouteController
    template: 'canvas'

    page: null

    updateField: _.debounce (field, value) ->
        if field? and value?
            f = {}
            f[field] = value
            Pages.update(@page._id, {$set: f})
    , 200

    savePage: ->
        inputs = {}
        $('input, textarea').each ->
            inputs[$(this).attr('name')] = $(this).val()

        unless inputs.created
            now = new Date()
            inputs._created = now
            inputs.created = moment(now).format('DD/MM/YYYY')

        pageId = Pages.insert(inputs)

        history.replaceState(null, null, '/' + pageId)

        @page = Pages.findOne(pageId)

    before: ->
        window.controller = this

        if @params._id
            @page = Pages.findOne(@params._id)
            unless @page
                @stop()
                return null
            setTitle(@page)

    waitOn: -> [
        subscriptions.pages,
        subscriptions.comments
    ]

    data: ->
        return {
            fieldsets: fieldsets
        }


Template.field.rendered = ->
    if $(@find('textarea')).length
        if $(@find('textarea')).val().length
            $(@find('.placeholder')).hide()
        else
            $(@find('.placeholder')).show()


Template.field.helpers
    focus: ->
        @name is Session.get('focusOn')

    value: ->
        if controller.page
            value = Pages.findOne(controller.page._id)[@name]
            return value

    comments: ->
        return getComments(@name)


Template.field.events
    'keyup .field-content': (event) ->
        $target = $(event.currentTarget)
        unless event.keyCode in [9, 16, 17, 18, 91, 93]
            if controller.page
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
    'keydown .field-content': (event) ->
        $target = $(event.currentTarget)
        $placeholder = $target.parents('.field').find('.placeholder')
        # Unless key pressed is a command key (backspace, shift, ctr, etc.),
        # hide placeholder:
        unless event.keyCode in [8, 9, 16, 17, 18, 91, 93]
            $placeholder.hide()

    'focus .field-content': (event) ->
        Session.set('focusOn', @name)

    'click .comments, click .about': (event) ->
        if event.target is event.currentTarget
            $('.comments, .about').removeClass('active')
            $(event.target).addClass('active')

    'click .comments .close, click .about .close': (event) ->
        $(event.currentTarget).parent().removeClass('active')

    'click button[name=submit]': (event) ->
        $writeComment = $(event.currentTarget).parents('.write-comment')
        _user_name = $writeComment.find('input[name=name]').val()
        comment = $writeComment.find('textarea[name=comment]').val()
        if comment and _user_name
            addComment(@name, comment, _user_name)
            $writeComment.find('input, textarea').val('')
