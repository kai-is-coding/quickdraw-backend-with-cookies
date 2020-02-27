Rails.application.routes.draw do

  get '/' => 'pages#home'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  get '/logged_in' => 'sessions#is_logged_in?'
  resources :users, only: [:create, :show, :index, :edit, :update]

  resources :playrooms, only: [:index, :create, :destroy]
  get '/playrooms/:id' => 'playrooms#show'

  resources :draws
  mount ActionCable.server => '/cable'



end
