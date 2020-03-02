Rails.application.routes.draw do
  # get 'orders/index'
  # get 'orders/new'
  # get 'orders/create'
  # get 'orders/edit'
  # get 'orders/update'
  # get 'orders/destroy'
  # get 'products/index'
  # get 'products/new'
  # get 'products/create'
  # get 'products/edit'
  # get 'products/update'
  # get 'products/destroy'
  # get 'sessions/index'
  # get 'sessions/new'
  # get 'sessions/create'
  # get 'sessions/edit'
  # get 'sessions/update'
  # get 'sessions/destroy'
  devise_for :users
  root to: 'pages#home'



  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :sessions, only:[:index, :new, :create, :edit, :show, :update]
end


