Rails.application.routes.draw do
  get 'welcome/index'
  resources :articles do
  resources :comments
end
  get 'store/index'
  get 'products/new'
  get 'products/index'
  	resources :line_items
  	resources :carts
	resources :users
	resources :sessions, only: [:new, :create, :destroy]
	resources :products
	root :to => "store#index", :as => 'store'
	match '/signup', to: 'users#new',via: 'get'
	match '/signin', to: 'sessions#new',via: 'get'
	match '/signout', to: 'sessions#destroy',via: 'delete'


end
