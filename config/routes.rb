Rails.application.routes.draw do
  devise_for :users
  resources :events
  get "profil", to: "static#profil"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "events#index"
end
