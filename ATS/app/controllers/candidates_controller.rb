class CandidatesController < ApplicationController
  layout 'employer'
  before_filter :require_login

  def index
    @candidates = Candidate.all
  end
end
