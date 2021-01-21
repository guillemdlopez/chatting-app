Rails.application.routes.draw do
  get 'users/create'
  root 'chatrooms#index'

  resources :chatrooms, only: [:show, :new, :create] do
    resources :messages, only: [:create]
  end

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  post 'message', to: 'messages#create'
  get 'signup', to: 'users#new' 

  resources :users, except: [:new] do
    get 'online', to: 'users#online'
    get 'offline', to: 'users#offline'
    get 'idle', to: 'users#idle'
    get 'abstent', to: 'users#absent'
  end

end
