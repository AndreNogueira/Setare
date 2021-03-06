Setare::Application.routes.draw do

  # Cars
  get 'cars/index', to: 'car#index',as: :cars_index
  get 'cars/pick_city/:id', to: 'car#pick_city', as: :get_pick_city
  get 'cars/drop_city/country/:country_id/agency/:agency_id', to: 'car#drop_city', as: :get_drop_city
  get 'cars/pick_subsidiary/:id', to: 'car#pick_subsidiary', as: :get_pick_subsidiary
  get 'cars/drop_subsidiary/city/:city_id/agency/:agency_id', to: 'car#drop_subsidiary', as: :get_drop_subsidiary
  get 'cars/get_agency/:id', to: 'car#get_agency', as: :get_agency
  post 'cars/search', to: 'car#search_results', as: :cars_search_results
  get 'cars/extras/:car_id', to: 'car#service_extras', as: :cars_service_extras
  get 'cars/payment', to:'car#service_payment', as: :car_service_payment
  post 'cars/payment', to:'car#service_payment'
  get 'cars/reservation', to: 'car#service_reservation', as: :car_service_reservation
  post 'cars/reservation', to: 'car#service_reservation'


  # Taxis
  get 'taxis/index', to: 'taxis#index', as: :taxis_index
  get 'taxis/city/:id', to: 'taxis#city', as: :get_city
  get 'taxis/pick_up/:id', to: 'taxis#pick_up', as: :get_pick_up
  get 'taxis/drop_off/:id', to: 'taxis#drop_off', as: :get_drop_off
  post 'taxis/search', to: 'taxis#search_results', as: :taxis_search
  post 'taxis/taxi/:id', to: 'taxis#taxi_selected', as: :taxi_selected
  post 'taxis/taxi_reservation', to:'taxis#taxi_reservation', as: :taxi_reservation


  # Reservations
  get 'reservations', to: 'home#reservations', as: :reservations


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
