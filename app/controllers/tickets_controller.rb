class TicketsController < ApplicationController
    before_action :set_ticket, only: [:show, :edit, :update, :mark_as_cancelled, :mark_as_showed, :mark_as_attendee]

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
    @order = Order.find(@ticket.order_id)
    @order.cancel_payment
    @order.save!
    redirect_to event_path(@ticket.attending_event)
  end

  def mark_as_attendee
    @ticket.attendee!
    redirect_to event_tickets_path(@ticket.attending_event)
  end

  def event_over
    event = Event.find(params[:event_id])
    tickets = event.tickets
    tickets.each do |ticket|
      if ticket.showup?
        order = Order.find(ticket.order_id)
        order.cancel_payment
        order.save!
      elsif ticket.attendee?
        order = Order.find(ticket.order_id)
        order.collect_payment
        order.save!
      end
    end
  end

  private

  def ticket_params
    params.permit(:status, :user_id, :event_id, :order_id)
  end

  def set_ticket
    @ticket = Ticket.find(params[:id])
  end
end
