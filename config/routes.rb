Rails.application.routes.draw do
  devise_for :users


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
    root to: 'pages#home'
  get 'owner', to: 'automobiles#owner', as: :owner
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # resources :automobiles do
  #   resources :bookings, only: %i[new create]
  # end

    resources :rooms, only: %i[index  show edit create ]
end
