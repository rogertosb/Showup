class TicketsController < ApplicationController
    before_action :set_ticket, only: [:show, :edit, :update, :mark_as_cancelled, :mark_as_showed, :mark_as_attendee]

  def index
    @event = Event.find(params[:event_id])
    @tickets = @event.tickets
      @search = params["search"]
    if @search.present?
      name = @search["name"]
      users = @event.users.where("first_name ILIKE ?", "%#{name}%").or(@event.users.where("last_name ILIKE ?", "%#{name}%"))
      @tickets = users.flat_map(&:tickets).select{|ticket|  ticket.event_id == @event.id}
    end

    @tickets = @tickets.sort_by { |ticket| ticket.user.last_name }
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
    event.close!
    event.save!
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
    redirect_to event_path(event)
  end

  private

  def ticket_params
    params.permit(:status, :user_id, :event_id, :order_id)
  end

  def set_ticket
    @ticket = Ticket.find(params[:id])
  end
end
