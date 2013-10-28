class TodoBackbone.Views.Todo extends Backbone.View

  template: JST['todos/todo']
  tagName: 'li'

  events:
    'dblclick': 'removeTodo'

  # initialize: ->
  #   @model.on('change', @render, this)

  removeTodo: ->
    @model.destroy()
    # @model.set({name: "#{@model.get('name')}_upd"})
    # @model.save()

  render: ->
    $(@el).html(@template(todo: @model))
    this