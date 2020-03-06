Rails.application.routes.draw do

  devise_for :users
  # delete 'users/sign_out', to: 'devise/sessions#destroy'

  resources :events do
    resources :tickets, only: %i[create index]
    patch 'tickets/:id/mark_as_cancelled', to: 'tickets#mark_as_cancelled', as: :mark_as_cancelled
    patch 'tickets/:id/mark_as_showed', to: 'tickets#mark_as_showed', as: :mark_as_showed
    patch 'tickets/:id/mark_as_attendee', to: 'tickets#mark_as_attendee', as: :mark_as_attendee
  end

  resources :tickets, only: %i[edit update show]
  resources :users, only: %i[new create]

  resources :users, only: %i[show edit update] do
    resources :events, only: %i[new create]
  end

  get 'pages/sign_up_details', to: 'pages#sign_up_details', as: :sign_up_details
  get 'dashboard', to: 'dashboards#index', as: :dashboard
  root to: 'pages#home'
end
