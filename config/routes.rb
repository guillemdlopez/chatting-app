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
  # post 'signup', to: 'users#create'
  resources :users, except: [:new]
end
