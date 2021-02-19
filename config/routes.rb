Rails.application.routes.draw do
  resources :welcome, :sessions, :users, :ratings, :wines 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
