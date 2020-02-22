Rails.application.routes.draw do
  # post '/users' => 'users#create'
  post '/login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  get '/logged_in' => 'sessions#is_logged_in?'
  resources :users, only: [:create, :show, :index]

  get '/testuser' => 'users#test'
end
