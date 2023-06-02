Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :reservations
  resources :room_images
  resources :reviews
  resources :rooms
  post "/users" => "users#create"
  get "/signup" => "users#new"
  post "/users" => "users#create"
  get "/login" => "sessions#new"
  post "/sessions" => "sessions#create"
  get "/logout" => "sessions#destroy"

  
  root "rooms#index"
  
  resources :rooms do
    resources :reservations
  end

  
  # post "/reservations" => "orders#create"
  # get "/reservations/:id" => "orders#show"
  # get "/reservations" => "orders#index"
end
