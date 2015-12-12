class Candidate < User
  has_many :employers, class_name: 'Employer'
  has_many :candidate_employers, dependent: :destroy
  has_many :candidate_degrees, dependent: :destroy
  accepts_nested_attributes_for :candidate_employers, :allow_destroy => true
  accepts_nested_attributes_for :candidate_degrees, :allow_destroy => true
end
