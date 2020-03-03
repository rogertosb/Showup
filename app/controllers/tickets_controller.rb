class TicketsController < ApplicationController
  # def new
  #   @ticket = Ticket.new
  # end

  def create
    @ticket = Ticket.new(tickets_params)
    @ticket.user = current_user
    @ticket.save!
  end

  private

  def tickets_params
    params.permit(:user_id, :event_id)
  end
end
