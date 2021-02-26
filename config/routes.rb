Rails.application.routes.draw do
  root 'sessions#index'
  resources :sessions, :ratings
  resources :wines do 
    resources :ratings, only: [:index, :show, :new, :create]
  end 
  resources :users do 
    resources :ratings, only: [:index, :show] 
  end 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
