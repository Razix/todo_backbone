class TodoBackbone.Collections.Todos extends Backbone.Collection
  url: '/api/todos'

  model: TodoBackbone.Models.Todo
