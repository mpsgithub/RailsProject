Rails.application.routes.draw do


  # root 'sessions#index'
  root 'sessions#new'
  post '/sessions' => 'sessions#create'
  post '/users' => 'users#create'
  get '/subjects/index' => 'subjects#index'
  get '/subjects/:id' => 'categories#index'
  get '/categories/:id' => 'subcategories#index'
  get '/subcategories/:id' => 'topics#index'
  get '/topics/:id' => 'topics#show'
  get '/games/:id' => 'games#index'
  get '/puzzles/:id' => 'puzzles#show'
  get '/memorygames/:id' => "memorygames#show"

  get '/sessions/new' => 'sessions#new'
  get '/sessions/index' => 'sessions#index'
  delete '/sessions' => 'sessions#destroy'
  get '/users/new' => 'users#new'
  get '/users/spell' => 'users#spell'
  get '/users/math' => 'users#math'
  post '/users' => 'users#create'
  # get '/users' => 'users#index'
  # patch '/users/:id' => 'users#update'
  # get '/users/:id/edit' => 'users#edit'
  # get '/users/:id' => 'users#show'
  # delete '/users/:id' => 'users#destroy'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
