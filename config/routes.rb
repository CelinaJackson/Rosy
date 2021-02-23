Rails.application.routes.draw do
  # root 'session#welcome'
  
  # resources :sessions, only: [:welcome, :create, :new, :destroy, :login]
  #   get '/signup', to: 'users#new'
  #   get '/login', to: 'sessions#new'
  #   post '/login', to: 'sessions#create'
  #   get '/logout', to: 'sessions#destroy'
  resources :sessions, :users, :ratings, :wines 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
