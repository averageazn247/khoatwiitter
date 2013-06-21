class Holiday < ActiveRecord::Base
  attr_accessible :creator, :date, :name
  
  belongs_to :user
  
  validates :creator, presence: true
  validates :date, presence: true
  validates :name, presence: true
end
