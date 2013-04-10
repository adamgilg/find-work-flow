class Company < ActiveRecord::Base
  attr_accessible :name, :address, :user_id

  validates :user_id, presence: true
  validates :name, presence: true

  belongs_to :user
  has_many :jobs
end