Rails.application.routes.draw do

  get 'messages/new'
  get 'messages/create'
  get 'messages/index'
  get 'messages/show'
  get 'messages/destroy'
  post '/login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  get '/logged_in' => 'sessions#is_logged_in?'
  resources :users, only: [:create, :show, :index]
  # test cookies function only
  # get '/testuser' => 'users#test'

  resources :playrooms, only: [:index, :create, :destroy]
  get '/playrooms/:id' => 'playrooms#show'
  # resources :messages, only: [:create]

  resources :draws
  mount ActionCable.server => '/cable'



end
