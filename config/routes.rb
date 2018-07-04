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
  get 'cart', to: 'orders#cart'
  root :to => "landing_pages#home"
  resources :products
  resources :users
  resources :orders do
    post 'add_product', on: :collection
    delete 'remove_product', on: :collection
    post 'order_handle', on: :member
    post 'order_send', on: :collection
  end

end
