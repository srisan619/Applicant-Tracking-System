class CandidateEmployer < ActiveRecord::Base
  attr_accessor :_destroy
  #attr_accessible :employer_name, :title
  belongs_to :candidate
  validates :sign_off_document, presence: true, :on => :create
  validates :document_type, :document_source, :project_name, :project_type, :project_brief_info, presence: true
end