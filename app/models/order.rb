class Order < ApplicationRecord
  belongs_to :user
  belongs_to :event
  monetize :amount_cents

  def session
    @session ||= Stripe::Checkout::Session.retrieve(checkout_session_id)
  rescue Stripe::InvalidRequestError
  end

  def payment_intent
    @payment_intent ||= Stripe::PaymentIntent.retrieve(payment_intent_id)
  end

  def requires_capture?
    state == "requires_capture"
  end

  def collect_payment(percentage=1)
    return unless requires_capture?
    Stripe::PaymentIntent.capture(payment_intent.id, amount_to_capture: (payment_intent.amount_capturable * percentage).round)
    update(state: 'paid')
  end

  def cancel_payment(reason="abandoned")
    return unless requires_capture?
    Stripe::PaymentIntent.cancel(payment_intent.id, cancellation_reason: reason)
    update(state: 'refunded')
  end
end
