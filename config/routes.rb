Rails.application.routes.draw do
  get 'sessions/new'

  get 'users/new'

  root 'pages#home'
  get '/register', to:'pages#register'
  get '/home', to:'sessions#new'
  get '/search', to:'pages#search'
  get '/people', to:'pages#people'
  get '/profilepage', to:'pages#profilepage'
  get '/signup', to: 'users#new'
  post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users

end
