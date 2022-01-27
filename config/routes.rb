Rails.application.routes.draw do
  get 'users/create'
  root 'chatrooms#index'
  get '/chatrooms', to: 'pages#chatrooms'

  resources :chatrooms, only: [:show, :new, :create] do
    resources :messages, only: [:create] do
    end
  end

  resources :messages, only: [:destroy]

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  post 'message', to: 'messages#create'
  get 'signup', to: 'users#new' 

  resources :users, except: [:show] do
    get 'online', to: 'users#online'
    get 'offline', to: 'users#offline'
    get 'idle', to: 'users#idle'
    get 'absent', to: 'users#absent'
  end
  get '/:username', to: 'users#show', as: 'profile'

  resources :messages do 
    resources :likes, only: [:create]
  end
end
