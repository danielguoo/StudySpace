Rails.application.routes.draw do
  #get 'sessions/new'

  #get 'static_pages/home'
  #get 'users/new'

  root 'static_pages#home'
  #get '/register', to:'pages#register'
  get '/home', to:'pages#home'
  #get '/search', to:'pages#search'
  #get '/people', to:'pages#people'
  #get '/profilepage', to:'pages#profilepage'
  get '/signup', to: 'users#new'
  post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  get '/logout',  to: 'sessions#destroy'
  resources :users

end
