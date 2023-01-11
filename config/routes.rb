Rails.application.routes.draw do
  resources :deliveries
  resources :payments
  resources :transactions
  resources :categories
  resources :orders
  resources :carts
  resources :products
  resources :users

  post 'login', to: 'authentication#login'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

