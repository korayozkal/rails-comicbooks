Rails.application.routes.draw do
 
root to: 'static#index' 

get '/signup' => 'users#new'
post '/signup' => 'users#create'

#login route
get '/login' => 'sessions#new'
post '/login' => 'sessions#create'

#logout route
delete '/logout' => 'sessions#destroy'


resources :users

#resources :users, except: [:new]

resources :comicbooks 

#check routes for all you actions 
#check 