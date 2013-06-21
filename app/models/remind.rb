class Remind < ActiveRecord::Base
  # attr_accessible :title, :body
  
  belongs_to :event   
  
end
