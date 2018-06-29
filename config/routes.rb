Rails.application.routes.draw do
  #get 'users/new'
  get '/admin', to: "products#index", as: 'admin'
  get '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  root :to => "landing_pages#home"
  resources :products
  resources :users

end
