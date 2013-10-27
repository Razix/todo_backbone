class TodoBackbone.Views.Todo extends Backbone.View

  template: JST['todos/todo']
  tagName: 'li'

  render: ->
    $(@el).html(@template(todo: @model))
    this