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
    newCandidate = new Vote.Models.Candidate
      name: @$('form input[name="name"]')
      ballot_position: @$('form input[name="ballot_position"]')
    newCandidate.save()

  render: ->
    @$el.append @template()
    @

