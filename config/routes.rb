Rails.application.routes.draw do
  devise_for :users
  resources :events do
    resources :tickets, only: %i[new create]
  end
  resources :users, only: %i[new create] do
    resources :tickets, only: %i[new create]
  end
  resources :users, only: %i[show]
  root to: 'pages#home'
end
