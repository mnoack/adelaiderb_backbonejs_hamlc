class Vote.Views.CandidateNew extends Backbone.View

  template: JST['candidates/new']

  events:
    'submit #new_form': 'submit'
    'click input': 'inputclick'

  inputclick: ->
    console.log 'arguments', arguments

  submit: (e) ->
    console.log 'submitted', arguments
    e.preventDefault()

  render: ->
    @$el.append @template()
    @

