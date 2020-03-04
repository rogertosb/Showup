class TicketsController < ApplicationController
    before_action :set_ticket, only: [:show, :edit, :update, :destroy]
  # def new
  #   @ticket = Ticket.new
  # end
  def index
    @events = Event.all
  end

  def create
    @ticket = Ticket.new(ticket_params)
    @ticket.user = current_user

    if @ticket.save
      redirect_to event_path(@ticket.attending_event)
    else
      render 'new'
    end
  end

  def show

  end

  def edit

  end

  def update
    @ticket.update(event_params)
    @ticket.save
    redirect_to events_path

  end

  def destroy
    @ticket.destroy
    redirect_to events_path
  end


  private

  def ticket_params
    params.permit(:status, :user_id, :event_id)
  end

  def set_ticket
    @ticket = Ticket.find(params[:id])
  end

end
