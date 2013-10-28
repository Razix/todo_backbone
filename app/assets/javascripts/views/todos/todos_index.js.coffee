class TodoBackbone.Views.TodosIndex extends Backbone.View

  template: JST['todos/index']

  events:
    'submit #new_todo': 'createTodo'

  initialize: ->
    @collection.on('reset', @render, this)
    @collection.on('add', @appendTodo, this)
    @collection.on('destroy', @render, this)

  render: ->
    $(@el).html(@template())
    @collection.each(@appendTodo)
    this

  appendTodo: (todo) ->
    view = new TodoBackbone.Views.Todo(model: todo)
    $('#todos').append(view.render().el)

  removeTodo: (todo) ->
    view = new TodoBackbone.Views.Todo(model: todo)
    console.log($(view.el).html())

  createTodo: (event) ->
    event.preventDefault()
    attributes = name: $('#new_todo_name').val()
    @collection.create attributes,
      wait: true
      success: -> $('#new_todo')[0].reset()
