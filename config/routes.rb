Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#dashboard'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :bookings, only: [:index, :show]

  resources :cars, only: [:index, :show] do
    resources :bookings, only: [:create]
  end
end
