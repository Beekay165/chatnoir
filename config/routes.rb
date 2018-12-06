Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'pages/about'
  
  # namespace for admin routes
  namespace :admin do
    resources :products
    # resources :orders
    # resources :users
    # resources :product
  end
end
