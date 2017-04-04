Rails.application.routes.draw do
  devise_for :users

  root 'advisor#index'

  get 'begin' => 'advisor#begin'

  get 'genre' => 'advisor#genre'
  post 'genre' => 'advisor#genre'

  resources :movies do
    get 'like' => 'movies#like'
    get 'nope' => 'movies#nope'
    get 'seen_like' => 'movies#seen_like'
    get 'seen_nope' => 'movies#seen_nope'

  end 

  resources :users do
    get 'watchlist' => 'user#watchlist'
    get 'nopelist' => 'user#nopelist'
    get 'seenlist' => 'user#seenlist'
  end 
  
  #root to:
  
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
end
