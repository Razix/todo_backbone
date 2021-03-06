class TodoBackbone.Collections.Todos extends Backbone.Collection
  url: '/api/todos'

  model: TodoBackbone.Models.Todo

  completed: ->
    this.filter (todo) ->
      todo.get('completed')

  remaining: ->
    @without.apply this, @completed()
