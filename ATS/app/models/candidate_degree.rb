class CandidateDegree < ActiveRecord::Base
  attr_accessor :_destroy
  #attr_accessible :employer_name, :title
  belongs_to :candidate
end