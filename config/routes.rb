Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'pages/about'
  
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
