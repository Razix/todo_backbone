window.TodoBackbone =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    new TodoBackbone.Routers.Todos
    Backbone.history.start()

$(document).ready ->
  TodoBackbone.initialize()
