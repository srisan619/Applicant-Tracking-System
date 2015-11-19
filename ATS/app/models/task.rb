class Task < ActiveRecord::Base
  has_one :user
  belongs_to :task_category
end
