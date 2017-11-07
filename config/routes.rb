Rails.application.routes.draw do
  get 'songs/new'

  get 'songs/create'

  get 'songs/update'

  get 'songs/destroy'

  resources :users
  resources :setlists
  resources :songs

  resources :sessions, only: [:new, :create, :destroy]
  root 'sessions#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
