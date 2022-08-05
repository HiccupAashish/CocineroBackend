Rails.application.routes.draw do

  resources :likes
  resources :chefs
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
    end
    namespace :v2 do
      resources :chefs
      post '/chef/login', to:"admin#create"
    end

  end
  
  resources :sightings
  get '/birds' => 'birds#index'
  get '/birds/:id' => 'birds#show'
  # resources :birds
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
