class TicketsController < ApplicationController
    before_action :set_ticket, only: [:show, :edit, :update, :mark_as_cancelled, :mark_as_showed, :mark_as_attendee]
    # before_action :set_order, only: [:mark_as_cancelled]
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

    @existing_ticket = current_user.tickets.find_by(event_id: @ticket.event_id)
    if @existing_ticket.present?
      @ticket = @existing_ticket
    end
    @ticket.attendee!

    if @ticket.save
      redirect_to event_path(@ticket.attending_event)
    else
      render 'new'
    end
  end

  def show
  end

  def mark_as_showed
    @ticket.showup!
    redirect_to event_tickets_path(@ticket.event_id)
  end

  def mark_as_cancelled
    @ticket.cancel!
    @order = Order.where(id: @ticket.order_id)
    @order[0].cancel_payment
    @order[0].save!
    redirect_to event_path(@ticket.attending_event)
  end

  def mark_as_attendee
    @ticket.attendee!
    redirect_to event_tickets_path(@ticket.attending_event)
  end

  def event_over
    @event = @ticket.event
    @@event.tickets.select { |ticket| ticket.status == 'requires_capture' }
  end

  private

  def ticket_params
    params.permit(:status, :user_id, :event_id, :order_id)
  end

  def set_ticket
    @ticket = Ticket.find(params[:id])
  end

  def set_order
    @order = Order.find(params[:id])
  end
end
