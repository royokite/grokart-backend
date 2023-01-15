Rails.application.routes.draw do

  post 'register', to: 'users#create'
  post 'login', to: 'users#login'
  post 'add_to_cart' => 'cart#add_to_cart'
  post 'order_complete' => 'cart#order_complete'
  get 'view_order' => 'cart#view_order'
  get 'me', to: 'users#show'
  
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

end

