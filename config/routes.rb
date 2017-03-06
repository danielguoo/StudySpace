Rails.application.routes.draw do
  #get 'static_pages/home'
  #get 'users/new'

  root 'static_pages#home'
  get '/register', to:'pages#register'
  get '/home', to:'pages#home'
  get '/search', to:'pages#search'
  get '/people', to:'pages#people'
  get '/profilepage', to:'pages#profilepage'
  get '/signup', to: 'users#new'
  post '/signup',  to: 'users#create'
  resources :users

end
