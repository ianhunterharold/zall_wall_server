Rails.application.routes.draw do
  resources :groups
  resources :karmas
  namespace :api do 
    resources :users, only: [:index, :create, :show, :update]
    post '/login', to: 'auth#create'
    get '/profile', to: 'users#profile'
    get '/searchedprofile', to: 'users#searchedprofile'
  end 


end
