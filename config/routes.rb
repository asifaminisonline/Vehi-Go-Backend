Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  # Defines the root path route ("/")
  # root "users#index"

  resources :users
  get 'users', to: 'users#index'

  namespace :api do
    namespace :v1 do

      resources :cars
      get 'cars', to:'cars#index'
      get 'car', to: 'cars#show'

      resources :reservation
    end
  end

end
