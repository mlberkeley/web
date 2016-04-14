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
    graph = Koala::Facebook::API.new("CAAYGzuK8lbwBAMWhUbAyROZASalHMQLTyeaZBeefRDi8VDZBSiam4h8ZBDlo5VnK75n7JXwJHwUCrmaTeOtcgn420oZCOVMpDfCaucOBJIAbVfR1iTKuJ29oOEhOFj7qLnPdk0XNf6zhePzlzbhLkvNudkbzaqHXQR0adj7ZCxMrcARWlfLDD41kCWsDHcOZC4iL3uDQhSccgZDZD")
    events = graph.get_object("v2.5/1701763616733787/events")
  end

end
