class Vote.Views.Candidate extends Backbone.View

  template: JST['candidates/candidate']

  render: ->
    console.log 'm2odel', @model, @model.toJSON()
    @$el.append @template(@model.toJSON())
    @

