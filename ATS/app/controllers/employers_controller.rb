class EmployersController < ApplicationController
  layout 'employer'
  before_filter :require_login
  before_action :set_employer,  only: [:edit_account, :update_account]

  def index
    @user = current_user
  end

  def account

  end

  def edit_account

  end

  def update_account
    if @employer.update(update_account_params)
      flash[:notice] = 'Account has been updated successfully.'
      redirect_to account_employers_path
    else
      flash[:alert] = '#{@employer.errors.full_messages.join(' , ')}'
      redirect_to edit_account_employers_path(@employer)
    end
  end

  private

  def set_employer
    @employer = Employer.where(id: current_user.id).first
  end

  def update_account_params
    params.require(:employer).permit(:company_name, :company_url, :employees_count, :company_logo, :organization_type )
  end
end
