deepClone = (x) -> JSON.parse(JSON.stringify(x))

class @ListController extends RouteController
    template: 'list'

    waitOn: ->
        subscriptions.pages

    data: ->
        fields = deepClone(_.union(fieldsets.top, fieldsets.topSmall))
        pages = []

        Pages.find({}, {sort: {_created: -1}}).forEach (_page) ->
            page =
                id: _page._id
                fields: deepClone(fields)

            for field in page.fields
                field.value = _page[field.name] or ''

            pages.push(page)

        return {
            fields: fields
            pages: pages
        }
