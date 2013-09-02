class VoteController < ActionController::Base
  layout 'application'

  def index
    @candidates = Candidate.all
  end
end
