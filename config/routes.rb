Rails.application.routes.draw do
  resources :mpesas
  post '/stkpush', to: 'mpesas#stkpush'
  post '/stkquery', to: 'mpesas#stkquery'

  resources :deliveries
  resources :payments
  resources :transactions
  resources :categories
  resources :orders
  resources :carts
  resources :products
  resources :users

  post '/login', to: 'authentication#login'

  # post 'add_to_cart' => 'cart#add_to_cart'
  # post 'order_complete' => 'cart#order_complete'
  # get 'view_order' => 'cart#view_order'

  post "/signup", to: "users#create"
  get "/me", to: "users#show"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
