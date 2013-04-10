class Job < ActiveRecord::Base
  attr_accessor :title, :notes, :company_id

  validates :company_id, presence: true
  validates :title, presence: true
  
  belongs_to :company
end