Rails.application.routes.draw do
  root 'pages#home'
  get '/register', to:'pages#register'
  get '/home', to:'pages#home'
  get '/search', to:'pages#search'
  resources :users

end
