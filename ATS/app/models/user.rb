class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :package
  has_many :tasks
  validates_presence_of :email, :first_name, :last_name, :company_name, :company_url, :employees_count, :package_id
end
