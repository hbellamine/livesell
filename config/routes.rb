Rails.application.routes.draw do

  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }

  root to: 'pages#home'

  resources :stores, only: [:edit, :update]

  resources :stores, only: [:index,:new,:create,:show] do
    resources :products, only:[:new, :create,:edit, :update, :show, :destroy]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :livecasts do
    resources :products, only:[:show] do
      get 'livecast_selection', to: 'selections#add' , as: 'selection'
      resources :selections
    end

  end
  get 'my_livecasts', to: 'livecasts#mylivecasts' , as: 'usermylivecasts'
end


