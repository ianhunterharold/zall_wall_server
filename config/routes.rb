Rails.application.routes.draw do
  resources :groups
  resources :karmas
  namespace :api do 
    resources :users, only: [:create]
    post '/login', to: 'auth#create'
    get '/profile', to: 'users#profile'
  end 


end
