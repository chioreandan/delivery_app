Rails.application.routes.draw do
  resources :products
  get '/admin', to: "products#index", as: 'admin'
  root :to => "landing_pages#home"
end
