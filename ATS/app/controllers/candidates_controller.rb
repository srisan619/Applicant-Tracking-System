class CandidatesController < ApplicationController
  layout 'employer'
  before_filter :require_login

  def index
    @candidates = Candidate.all
  end

  def new
    @candidate = Candidate.new
  end

  def create

  end
end
