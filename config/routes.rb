Rails.application.routes.draw do
  get 'sessions/new'

  get 'users/new'

  root 'sessions#new'
  get '/home', to:'sessions#new'
  get '/search', to:'pages#search'
  get '/people', to:'pages#people'
  get '/profilepage', to:'pages#profilepage'
  get '/signup', to: 'users#new'
  post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  #delete '/logout',  to: 'sessions#destroy' ## this breaks stuff idk why
  get '/logout' => :destroy, to: 'sessions#new'
  resources :users
  resources :courses
end
