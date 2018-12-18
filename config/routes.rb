Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  devise_for :users, controllers: { confirmations: 'confirmations' }
  devise_scope :user do
  get '/users/sign_out' => 'devise/sessions#destroy'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   root "home#index"
   get  '/about', to: 'pages#about'
   get  '/products', to: 'products#index'
   get  '/products/show/:id', to: 'products#show'
   get  '/posters', to: 'products#poster'
   get  '/illustrations', to: 'products#illustration'
   get  '/woodblocks', to: 'products#woodblock'
  # namespace for admin routes
  namespace :admin do
    # admin dashboard route
    get 'dashboard', to: 'dashboard#home' 
    resources :products
    resources :orders
    resources :categories
    resources :users
    resources :product
    resources :variants
  end
  

end




  
