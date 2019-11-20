Rails.application.routes.draw do
  namespace :api do 
    resources :users, only: [:create]
    post '/login', to: 'auth#create'
    get '/profile', to: 'users#profile'
  end 


end
