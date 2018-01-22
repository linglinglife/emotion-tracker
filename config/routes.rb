Rails.application.routes.draw do

  root to: 'pages#home'

  get '/pages/home'
  get '/pages/profile'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
  
end
