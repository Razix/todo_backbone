class TodoBackbone.Routers.Todos extends Backbone.Router
  routes:
    '': 'index'

  initialize: ->
    @collection = new TodoBackbone.Collections.Todos()
    @collection.fetch({reset: true})

  index: ->
    view = new TodoBackbone.Views.TodosIndex(collection: @collection)
    $('#container').html(view.render().el)