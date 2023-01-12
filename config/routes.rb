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
  post 'add_to_cart' => 'cart#add_to_cart'

  get 'view_order' => 'cart#view_order'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

