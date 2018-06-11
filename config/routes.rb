Rails.application.routes.draw do
  resources :products
  get '/admin', to: "products#index"
  root :to => "landing_pages#home"
end
