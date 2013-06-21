module EventsHelper
  def setup(event)
    event.remind ||= Remind.new
    event
    
  end
end
