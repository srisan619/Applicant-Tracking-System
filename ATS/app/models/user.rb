class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :package
  has_many :tasks, dependent: :destroy
  validates_presence_of :email, :first_name, :last_name, :company_name, :company_url, :employees_count, :package_id
  validates :email, :format => {with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i}, :allow_blank => false, :allow_nil => false, :uniqueness => { :case_sensitive => false }
  validates :first_name, :last_name, length: { minimum: 2, maximum: 20 }
  has_attached_file :company_logo, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :company_logo, content_type: /\Aimage\/.*\Z/
  validates_with AttachmentSizeValidator, attributes: :company_logo, less_than: 1.megabytes
end
