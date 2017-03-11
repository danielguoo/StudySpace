Rails.application.routes.draw do
  root 'static_pages#home'
  get '/signup', to: 'users#new'
  post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  get '/logout',  to: 'sessions#destroy'
  resources :users
  resources :courses
  resources :posts, only: [:new, :create, :index]

  #following pages#<name> routes are useless and are intended to be mere placeholders only.
  get '/search', to:'pages#search'
  get '/people', to:'pages#people'
  #get '/profilepage', to:'pages#profilepage'

end
