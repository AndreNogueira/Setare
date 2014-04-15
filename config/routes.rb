Setare::Application.routes.draw do

  # Taxis
  get 'taxis/index', to: 'taxis#index', as: :taxis_index
  get 'taxis/city/:id', to: 'taxis#city', as: :get_city
  get 'taxis/pick_up/:id', to: 'taxis#pick_up', as: :get_pick_up
  get 'taxis/drop_off/:id', to: 'taxis#drop_off', as: :get_drop_off
  post 'taxis/search', to: 'taxis#search_results', as: :taxis_search
  post 'taxis/taxi/:id', to: 'taxis#taxi_selected', as: :taxi_selected


  devise_for :users, :controllers => {:registrations => 'registrations'}

  devise_scope :user do
    get '/user_password/edit', to:'registrations#edit_password', as:'user_password_edit'
  end


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'

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
