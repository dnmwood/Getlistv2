Rails.application.routes.draw do
  root 'sessions#new'

  resources :users do
    resources :dashboard, only: [:index]
    resources :setlists
    resources :songs
  end

  get '/dashboard', to: 'dashboard#index'
  get '/login', to: 'sessions#new'

  resources :sessions, only: [:new, :create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
