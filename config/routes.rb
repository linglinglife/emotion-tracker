Rails.application.routes.draw do
  
  resources :users

  # get 'users/new'
  # get 'users/create'
  # get 'users/edit'
  # get 'users/update'
  # get 'users/show'
  # get 'users/destroy'

  root to: 'pages#home'
  
  get '/pages/home'
  
  # get '/pages/profile'
  
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
  
  # resources :pages
  
end
