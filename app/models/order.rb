class Order < ApplicationRecord
  belongs_to :user
  belongs_to :event
  monetize :amount_cents

  def session
    Stripe::Checkout::Session.retrieve(checkout_session_id)
  end

  def payment_intent
    Stripe::PaymentIntent.retrieve(session.payment_intent)
  end
end
