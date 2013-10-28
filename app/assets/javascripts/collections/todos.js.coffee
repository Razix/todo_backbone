class TodoBackbone.Collections.Todos extends Backbone.Collection
  url: '/api/todos'

  initialize: ->
    this.on('remove', @hideModel)

  hideModel: (model) ->
    model.trigger('hide')

  model: TodoBackbone.Models.Todo
