Rails.application.routes.draw do
  get 'users/new'

  root 'pages#home'
  get '/register', to:'pages#register'
  get '/home', to:'pages#home'
  get '/search', to:'pages#search'
  get '/people', to:'pages#people'
  get '/profilepage', to:'pages#profilepage'
  get '/signup', to:'users#new'
  resources :users

end
