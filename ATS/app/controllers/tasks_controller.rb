class TasksController < ApplicationController
  layout 'employer'
  before_filter :require_login
  before_action :set_task,  only: [:edit, :show, :update, :destroy]

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
    else
      flash[:alert] = '#{@task.errors.full_messages.join(' , ')}'
      redirect_to new_task_path
    end
  end

  def edit

  end

  def update
    if @task.update(task_params)
      flash[:notice] = 'Task has been updated successfully.'
      redirect_to tasks_path
    else
      flash[:alert] = '#{@task.errors.full_messages.join(' , ')}'
      redirect_to edit_task_path(@task)
    end
  end

  def destroy
    if @task.destroy
      flash[:notice] = 'Task has been updated successfully.'
      redirect_to tasks_path
    else
      flash[:alert] = '#{@task.errors.full_messages.join(' , ')}'
      redirect_to tasks_path
    end
  end

  private

  def task_params
    params.require(:task).permit(:task_category_id, :user_id, :is_email_notify, :subject, :task_date, :start_time, :end_time )
  end

  def set_task
    @task = Task.where(id: params[:id]).first
  end
end
