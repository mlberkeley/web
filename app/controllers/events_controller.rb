class EventsController < ApplicationController
  def index
    @imgList = ["gm.jpg", "gm.jpg"]
    @q = get_events
    @events = get_events.select { |hash| hash["start_time"] > Time.now.beginning_of_day }
  end

  def past
    @imgList = ["gm.jpg", "kaggle.jpg", "numenta.jpg","data_viz.jpg", "matlab.jpg", "gm.jpg", "gm.jpg"]
    @events = get_events.select { |hash| hash["start_time"] < Time.now.beginning_of_day }
  end

private
  def get_events
    graph = Koala::Facebook::API.new(Figaro.env.fb_api_key)
    events = graph.get_object("v2.5/1701763616733787/events")
  end

end
