Rails.application.routes.draw do
  devise_for :users
  resources :events do
    resources :tickets, only: %i[create index]
  end

  resources :tickets, only: %i[edit update show detroy]
  resources :users, only: %i[new create]

  resources :users, only: %i[show edit update] do
    resources :events, only: %i[new create]
  end

  get 'pages/sign_up_details', to: 'pages#sign_up_details', as: :sign_up_details
  get 'dashboard', to: 'dashboards#index', as: :dashboard
  root to: 'pages#home'
end
