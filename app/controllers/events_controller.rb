class EventsController < ApplicationController
  def index
    @q = get_events
    @events = get_events.select { |hash| hash["start_time"] > Time.now.beginning_of_day }
  end

  def past
    @events = get_events.select { |hash| hash["start_time"] < Time.now.beginning_of_day }
  end

private
  def get_events
    graph = Koala::Facebook::API.new(Figaro.env.fb_api_key)
    events = graph.get_object("v2.5/1701763616733787/events")
  end

end
