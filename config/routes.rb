Rails.application.routes.draw do
  get 'sessions/new'
  # get '/main' => 'users#index'
  # get '/' => 'users#index'
  root 'users#index'
  patch '/playlist/:id/add' => 'playlists#add'
  resources :users
#   Prefix Verb   URI Pattern               Controller#Action
#   users GET    /main(.:format)          users#index
#         POST   /users(.:format)          users#create
# new_user GET    /users/new(.:format)      users#new
# edit_user GET    /users/:id/edit(.:format) users#edit
#    user GET    /users/:id(.:format)      users#show
#         PATCH  /users/:id(.:format)      users#update
#         PUT    /users/:id(.:format)      users#update
#         DELETE /users/:id(.:format)      users#destroy
  resources :sessions
#   sessions POST   /sessions(.:format)       sessions#create
#   new_sessions GET    /sessions/new(.:format)   sessions#new
#  edit_sessions GET    /sessions/edit(.:format)  sessions#edit
#                GET    /sessions(.:format)       sessions#show
#                PATCH  /sessions(.:format)       sessions#update
#                PUT    /sessions(.:format)       sessions#update
#                DELETE /sessions(.:format)       sessions#destroy
 resources :songs
#  songs GET    /songs(.:format)             songs#index
#  POST   /songs(.:format)             songs#create
# new_song GET    /songs/new(.:format)         songs#new
# edit_song GET    /songs/:id/edit(.:format)    songs#edit
#  PATCH  /songs/:id(.:format)         songs#update
#  PUT    /songs/:id(.:format)         songs#update
#  DELETE /songs/:id(.:format)         songs#destroy

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
