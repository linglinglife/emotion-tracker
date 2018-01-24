Rails.application.routes.draw do

  root to: 'pages#home'
  get '/pages/home'
  
  # resources :pages
  
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
  
  resources :users

  # get 'users/new'
  # get 'users/create'
  # get 'users/edit'
  # get 'users/update'
  # get 'users/show'
  # get 'users/destroy'
  
  resources :feelings do
    resources :comments
  end
  
  # get 'feelings/new'
  # get 'feelings/create'
  # get 'feelings/edit'
  # get 'feelings/update'
  # get 'feelings/show'
  # get 'feelings/destroy'

end
