class Job < ActiveRecord::Base
  attr_accessible :title, :notes, :company_id, :last_contacted

  validates :company_id, presence: true
  validates :title, presence: true
  
  belongs_to :company
end