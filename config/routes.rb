Cms::Application.routes.draw do
  resources :gift_certs

  resources :phones

  resources :addresses

  resources :owners
  resources :sessions, only: [:new, :create, :destroy]
  
  resources :owners do
    resources :businesses
  end

  resources :businesses do
    resources :customers
    resources :services
  end

  resources :customers do
    resources :visits
  end

  resources :visits

  root to: 'static_pages#home'

  get '/signup',      to: 'owners#new'
  get '/help',        to: 'static_pages#help'
  get '/about',       to: 'static_pages#about'
  get '/signin',      to: 'sessions#new'

  post '/signin',     to: 'sessions#create'

  delete '/signout',  to: 'sessions#destroy'
  
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root to: 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
