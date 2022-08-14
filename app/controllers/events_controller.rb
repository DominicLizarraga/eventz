class EventsController < ApplicationController
  def index
    @events = Event.all
  end
  def show
    # fail
    @event = Event.find(params[:id])
  end

  def edit
    @event = Event.find(params[:id])
  end
end
