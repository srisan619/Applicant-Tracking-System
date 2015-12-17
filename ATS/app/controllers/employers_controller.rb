class EmployersController < ApplicationController
  layout 'employer'
  before_filter :require_login

  def index
    @user = current_user
  end

  def account

  end

  def edit_account
    @employer = Employer.where(id: current_user.id).first
  end
end
