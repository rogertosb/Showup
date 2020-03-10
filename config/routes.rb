Rails.application.routes.draw do

  devise_for :users

  resources :events do
    patch 'event_over', to: 'tickets#event_over', as: :event_over
    resources :tickets, only: %i[create index]
    patch 'tickets/:id/mark_as_cancelled', to: 'tickets#mark_as_cancelled', as: :mark_as_cancelled
    patch 'tickets/:id/mark_as_showed', to: 'tickets#mark_as_showed', as: :mark_as_showed
    patch 'tickets/:id/mark_as_attendee', to: 'tickets#mark_as_attendee', as: :mark_as_attendee
  end

  resources :tickets, only: %i[edit update show]

  resources :users, only: %i[new create show edit update] do
    resources :events, only: %i[new create]
    patch 'switch_to_organizer', to: 'users#switch_to_organizer', as: :switch_to_organizer
    patch 'switch_to_attendee', to: 'users#switch_to_attendee', as: :switch_to_attendee
  end

  resources :orders, only: [:show, :create] do
    resources :payments, only: :new
  end

  mount StripeEvent::Engine, at: '/stripe-webhooks'

  get 'pages/sign_up_details', to: 'pages#sign_up_details', as: :sign_up_details
  get 'dashboard', to: 'dashboards#index', as: :dashboard
  root to: 'pages#home'
end
