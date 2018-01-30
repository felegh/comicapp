Rails.application.routes.draw do

  get 'user/signup', to: 'user#signup'
  post 'user/signup', to: 'user#create'
  get 'user/login',  to: 'sessions#new'
  post 'user/login', to: 'sessions#create'
  #delete 'user/logout' to: 'sessions#destroy'
  resources :user
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
