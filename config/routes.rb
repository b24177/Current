Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :bookings, only: [:index, :show]

  get "/pages/dashboard" => "pages#dashboard"

  resources :cars, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:create]
  end
end
