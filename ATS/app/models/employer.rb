class Employer < User
  has_many :candidates, class_name: "Candidate"
  has_many :tasks
end
