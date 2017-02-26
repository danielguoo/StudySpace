Rails.application.routes.draw do
  root 'pages#home'
  get '/register', to:'pages#register'
  get '/home', to:'pages#home'
  get '/search', to:'pages#search'
  get '/people', to:'pages#people'
  get '/profilepage', to:'pages#profilepage'
  resources :users

end
