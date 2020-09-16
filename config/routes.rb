Rails.application.routes.draw do
 
root to: 'static#index' #update to welcome
  
get '/signup', to: 'users#new'
get '/login', to: 'sessions#new',  as: 'login' 
post '/login', to: 'sessions#create'  
delete '/logout', to: 'sessions#destroy'

resources :users, except: [:new]

resources :comicbooks do 
  resources :reviews
end 

  #get '/signup' to: 'users#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #get '/login', to: 'sessions#new'   #, as: 'login'
  #post '/login', to: 'sessions#create'
  #delete '/logout', to: 'sessions#destroy'
end 

