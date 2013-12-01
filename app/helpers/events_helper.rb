module EventsHelper

  def current_events?
    Event.current_events? current_admin
  end

end
