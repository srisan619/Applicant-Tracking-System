class TasksController < ApplicationController
  layout 'employer'
  before_filter :require_login

  def index

  end

  def new
    #raise params.inspect
  end

  def create

  end
end
