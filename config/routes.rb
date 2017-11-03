Rails.application.routes.draw do
  get 'setlists/index'

  get 'setlists/new'

  get 'setlists/show'

  get 'users/login'

  get 'users/new'

  get 'users/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
