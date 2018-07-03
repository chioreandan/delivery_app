Rails.application.routes.draw do
  get 'orders/new'
  get 'orders/view'
  #get 'users/new'
  get '/admin', to: "products#index", as: 'admin'
  get '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get 'cart', to: 'users#view_orders'
  root :to => "landing_pages#home"
  resources :products
  resources :users
  resources :orders do
    post 'add_product'
  end

end
