class TodoBackbone.Views.Todo extends Backbone.View

  template: JST['todos/todo']
  tagName: 'li'

  events:
    'click button#delete': 'removeTodo'
    'change input[type=checkbox]': 'toggleCompletion'

  initialize: ->
    @model.on('remove', @remove, this)
    @model.on('change', @render, this)

  removeTodo: ->
    @model.destroy()

  toggleCompletion: ->
    @model.toggleCompletion()

  render: ->
    $(@el).html(@template(todo: @model))
    this