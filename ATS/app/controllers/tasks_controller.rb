class TasksController < ApplicationController
  layout 'employer'
  before_filter :require_login

  def index

  end
end
