class TasksController < ApplicationController
  layout 'employer'
  before_filter :require_login

  def index

  end

  def new
    @task = Task.new
  end

  def create

  end
end
