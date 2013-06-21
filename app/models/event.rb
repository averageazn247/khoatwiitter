class Event < ActiveRecord::Base
  attr_accessible :dayof, :description, :name, :creator, :remind_attributes, :monday, :tuesday, :wedsday, :thursday, :friday, :satday, :sunday
  attr_accessible   :daily, :weekly,  :weekends, :biweekly, :weekdays , :biweekly, :monthly, :yearly , :semiyearly ,:quarterly
  attr_accessible   :start_time, :end_time
  belongs_to :user
    

 

  
  def import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Event.create! row.to_hash
    end
  end

end
