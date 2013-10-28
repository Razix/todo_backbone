class TodoBackbone.Views.Todo extends Backbone.View

  template: JST['todos/todo']
  tagName: 'li'

  events:
    'click button#delete': 'removeTodo'
    'change input[type=checkbox]': 'toggleCompletion'
    'dblclick label': 'edit'
    'keypress .edit': 'updateOnEnter'
    'blur .edit': 'close'

  initialize: ->
    @model.on('remove', @remove, this)
    @model.on('change', @render, this)

  removeTodo: ->
    @model.destroy()

  toggleCompletion: ->
    @model.toggleCompletion()

  edit: ->
    @$el.addClass "editing"
    @$input.focus()

  close: ->
    trimmedValue = @$input.val().trim()
    @$input.val trimmedValue
    if trimmedValue
      @model.save name: trimmedValue
    else
      @clear()
    @$el.removeClass "editing"

  updateOnEnter: (e) ->
    @close() if e.which is 13

  render: ->
    $(@el).html(@template(todo: @model))
    @$input = @$(".edit")
    this