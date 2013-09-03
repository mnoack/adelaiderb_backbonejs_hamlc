class Vote.Views.CandidatesIndex extends Backbone.View

  template: JST['candidates/index']

  render: ->
    @$el.append @template()

    newView = new Vote.Views.CandidateNew()
    @$('#new').append newView.render().$el

    @model.each (candidate) =>
      view = new Vote.Views.Candidate(model: candidate)
      @$el.append view.render().$el
    @
