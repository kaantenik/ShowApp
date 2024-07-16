Rails.application.routes.draw do
  # Define your routes here
  get 'about', to: 'about#index', as: 'about'
  get 'contacts/new', to: 'contacts#new', as: 'new_contact'
  post 'contacts', to: 'contacts#create', as: 'create_contact'
  get 'home/index'

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "home#index"
end
