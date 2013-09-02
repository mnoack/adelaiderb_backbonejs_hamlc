window.Vote =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    candidates = new Vote.Collections.Candidates(window.candidatesJson)

    view = new Vote.Views.CandidatesIndex(model: candidates)
    $('body').append(view.render().$el)

$(document).ready ->
  Vote.initialize()
