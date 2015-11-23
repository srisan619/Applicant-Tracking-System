class Candidate < User
  has_many :employers, class_name: 'Employer'
end
