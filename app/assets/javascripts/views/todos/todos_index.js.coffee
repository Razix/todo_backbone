class TodoBackbone.Views.TodosIndex extends Backbone.View

  template: JST['todos/index']

  events:
    'submit #new_todo': 'createTodo'

  initialize: ->
    @collection.on('reset', @render, this)

  render: ->
    $(@el).html(@template(todos: @collection))
    this

  createTodo: (event) ->
    event.preventDefault()
    @collection.create name: $('#new_todo_name').val()
