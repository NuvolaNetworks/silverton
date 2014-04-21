Silverton::Application.routes.draw do
  devise_for :users
  resources :portfolios

  get "pages/home"

  get "pages/about"

  get "pages/contact"

  get "pages/main_portfolio"

  get '/portfolio_main' => 'pages#main_portfolio'

  get '/contact' => 'pages#contact'

  get '/about' => 'pages#about'
  get '/architects' => 'pages#architects'
  get '/build_process' => 'pages#process'
  get '/build' => 'pages#build'
  get '/design' => 'pages#design'
  get '/third_party' => 'pages#third_party'
  get '/home_site' => 'pages#home_site'
  get '/register' => 'pages#register'
  get '/awards' => 'pages#awards'
  get '/tierra' => 'pages#tierra'
  get '/thanks' => 'pages#thanks'
  get '/texas_star' => 'pages#texas_star'
  get '/parade_home' => 'pages#parade_home'
  get '/remodeling' => 'pages#remodeling'
  get '/parade_info' => 'pages#parade_info'
  get '/thanks_contact' => 'pages#thanks_contact'
  get '/custom-home-gallery/2013-southern-living-showcase-home/' => 'portfolios#index'

  root :to => 'pages#home'

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
