Rails.application.routes.draw do
  root 'sessions#new'

  resources :users
  resources :dashboard, only: [:index]
  resources :setlists
  resources :songs

  get '/dashboard', to: 'dashboard#index'
  get '/login', to: 'sessions#new'
  get '/logout', to: 'sessions#destroy'

  resources :sessions, only: [:new, :create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
