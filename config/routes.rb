Rails.application.routes.draw do
  devise_for :users
  resources :events do
    resources :tickets, only: %i[new create]
  end
  resources :users, only: %i[new create] do
    resources :tickets, only: %i[new create]
  end
  resources :users, only: %i[show edit update] do
    resources :events, only: %i[new create]
  end
  get 'pages/sign_up_details', to: 'pages#sign_up_details', as: :sign_up_details

  get 'dashboard', to: 'dashboards#index', as: :dashboard
  root to: 'pages#home'
end
