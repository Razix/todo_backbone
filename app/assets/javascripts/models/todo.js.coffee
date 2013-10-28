class TodoBackbone.Models.Todo extends Backbone.Model

  toggleCompletion: ->
    unless @get('completed')
      @set completed: true
    else
      @set completed: false
    @save()