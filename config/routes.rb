Rails.application.routes.draw do
  resources :collections
  resources :comicbooks
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
