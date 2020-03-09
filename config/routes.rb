Rails.application.routes.draw do

 root 'welcome#index'
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions',
    omniauth_callbacks: 'users/omniauth_callbacks'
  }

  root to: 'pages#home'

  resources :stores, only: [:edit, :update]
  get 'stores/:id', to: 'stores#show', as: 'mystore'

  resources :stores, only: [:index,:new,:create,:show] do
    resources :products, only: [:new, :create,:edit, :update, :show, :destroy] do
      get 'update_quantity', to: 'products#updatequantity' , as: 'update_quantity'
      patch 'update_sizes', to: 'products#update_sizes' , as: 'update_sizes'
      get 'update_shoesquantity', to: 'products#updateshoesquantity' , as: 'update_shoesquantity'
      patch 'update_shoesizes', to: 'products#update_shoesizes' , as: 'update_shoesizes'
      get 'update_colorsquantity', to: 'products#updatecolorsquantity' , as: 'update_colorsquantity'
      patch 'update_colors', to: 'products#update_colors' , as: 'update_colors'
    end
  end



  #resources :product_sizes, only: [:update]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :livecasts do
    resources :chat_rooms, only: [ :show ] do
      resources :messages, only: [ :create ]
    end

    resources :products, only:[:show] do
      get 'livecast_selection', to: 'selections#add' , as: 'selection'
      delete 'selections/:id', to: 'selections#destroy', as: 'destroyselection'
      resources :selections
    end

  end
  get 'my_livecasts', to: 'livecasts#mylivecasts' , as: 'usermylivecasts'

end


