class StripeCheckoutSessionService
  def call(event)
    order = Order.find_by(checkout_session_id: event.data.object.id)
    order.update(state: 'requires_capture')
    create_ticket(order)
  end

  private

  def create_ticket(order)
    ticket = Ticket.find_or_create_by(user_id: order.user.id, event_id: order.event.id)
    ticket.update(status: 'Attending', order_id: order.id)
  end
end
