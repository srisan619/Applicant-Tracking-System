class TasksController < ApplicationController
  layout 'employer'
  before_filter :require_login

  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      flash[:notice] = 'Task has been created successfully.'
      redirect_to tasks_path
    end
  end

  private

  def task_params
    params.require(:task).permit(:task_category_id, :user_id, :is_email_notify, :subject, :task_date, :start_time, :end_time )
  end
end
