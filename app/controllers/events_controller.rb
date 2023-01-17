class EventsController < ApplicationController
  def index
    @events = Event.all
  end
  def show
    @event = Event.find(params[:id])
  end
  def new
    if authenticate_user! == false
      redirect_to root_path
    end
    @event = Event.new
  end
  def create
    @event = Event.create(event_params)
    @event.user = current_user
    @event.save
    redirect_to root_path
  end

  private
    def event_params
        params.require(:event).permit(:start_date, :duration, :title, :description, :price, :location, :user)
    end
end
