Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  # API routes
  namespace :api do
    namespace :v1 do
      resources :users do
        # get 'users', to: 'users#index'
        resources :reservations, only: [:index, :create, :destroy] 
        # get 'reservations', to: 'reservations#index' 
      end
      resources :cars, only: [:index, :show, :create, :update]
      get 'cars', to:'cars#index'
      get 'car', to: 'cars#show'
      
    end
  end

end
