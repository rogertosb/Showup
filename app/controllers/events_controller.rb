class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def index
    @events = Event.all
    @search = params["search"]
    if @search.present?
      @title = @search["title"]
      @events = Event.where("title ILIKE ?", "%#{@title}%")
    end
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
    @user = current_user
    @ticket = @event.tickets.find_by(user: @user)
    @available_tickets = @event.tickets.select { |x| x.attendee? || x.showup? }.size
    @stake_earned = stake_earned
  end

  def stake_earned
     absent_people = @event.tickets.select { |ticket| ticket.attendee? }.size
     stake_value = @event.stake
     money_before_fee = absent_people * stake_value
     money_after_fee = money_before_fee - (money_before_fee * 0.3)
     return money_after_fee
  end

  def edit

  end

  def update
    @event.update(event_params)
    if @event.save
      redirect_to event_path(@event)
    else
      render 'new'
    end
  end

  def destroy
    @event.destroy
    redirect_to event_path(event)
  end

  private

  def event_params
    params.require(:event).permit(:title, :description, :location, :photo, :food,
     :drink, :number_max_of_attendees, :stake, :start_time, :end_time, :user_id)
  end

  def set_event
    @event = Event.find(params[:id])
  end
end
