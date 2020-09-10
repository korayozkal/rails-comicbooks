Rails.application.routes.draw do
  resources :collections
  resources :comicbooks
  resources :users, except: [:new]

  #get '/signup' to: 'users#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #get '/login', to: 'sessions#new'   #, as: 'login'
  #post '/login', to: 'sessions#create'
  #delete '/logout', to: 'sessions#destroy'
end 