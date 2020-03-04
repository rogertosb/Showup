class TicketsController < ApplicationController
    before_action :set_ticket, only: [:show, :edit, :update, :destroy]
  # def new
  #   @ticket = Ticket.new
  # end
  def index
    @event = Event.find(params[:event_id])
    @tickets = Ticket.all
  end

  def create
    @ticket = Ticket.new(ticket_params)
    @ticket.user = current_user
    @ticket.status = 'Attendee'

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
    @event = @ticket.event_id
    @ticket.update(ticket_params)
    @ticket.status = 'Show up'
    @ticket.save
    redirect_to  event_tickets_path(@event)
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
