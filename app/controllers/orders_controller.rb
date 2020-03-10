class OrdersController < ApplicationController
  def create
    event = Event.find(params[:event_id])
    order  = Order.create!(event_id: event.id, amount: event.stake, state: 'pending', user: current_user)

    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [{
        name: event.title,
        images: [event.photo],
        amount: event.stake_cents,
        currency: 'eur',
        quantity: 1
      }],
      payment_intent_data: {
        capture_method: "manual"
      },
      success_url: order_url(order),
      cancel_url: order_url(order)
    )

    order.update(checkout_session_id: session.id)
    redirect_to new_order_payment_path(order)
  end

  def show
    @order = current_user.orders.find(params[:id])
  end
end
