Rails.application.routes.draw do
  resources :user_groups
  resources :groups
  resources :karmas
  namespace :api do 
    resources :users, only: [:index, :create]
    post '/login', to: 'auth#create'
    get '/profile', to: 'users#profile'
    get '/searchedprofile', to: 'users#searchedprofile'
  end 


end
