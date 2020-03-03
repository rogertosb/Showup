class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user
    if @event.save
      redirect_to event_path(@event)
    else
      render 'new'
    end
  end

  def show

  end

  def edit

  end

  def update

  end

  def destroy
    @event.destroy
    redirect_to event_path(event)
  end

  private

  def event_params
    params.require(:event).permit(:title, :description, :location, :banner, :food,
     :drink, :number_max_of_attendees, :stake, :start_time, :end_time, :user_id)
  end

  def set_event
    @event = Event.find(params[:id])
  end

end
