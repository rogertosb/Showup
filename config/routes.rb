Rails.application.routes.draw do
  devise_for :users
  resources :events do
    resources :tickets, only: %i[new create]
  end
  resources :users, only: %i[new create] do
    resources :tickets, only: %i[new create]
  end
  resources :users, only: %i[show edit update]
  get 'pages/sign_up_details', to: 'pages#sign_up_details', as: :sign_up_details
  root to: 'pages#home'
end
