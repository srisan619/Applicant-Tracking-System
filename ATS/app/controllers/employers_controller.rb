class EmployersController < ApplicationController
  layout 'employer'
  def index
    @user = current_user
  end
end
