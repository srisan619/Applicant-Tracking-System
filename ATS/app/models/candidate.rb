class Candidate < User
  has_many :employers, class_name: 'Employer'
  has_many :candidate_employers, dependent: :destroy
  accepts_nested_attributes_for :candidate_employers, :allow_destroy => true
end
