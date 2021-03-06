Gameproject::Application.routes.draw do
  get "aboutapp/about"

  get "aboutapp/credits"

  get "aboutapp/features"

  get "games/index"

  get "games/new"

  get "games/slimeball"

  get "games/greenbug"

  get "games/invasion"

  get "games/farmpanic"

  get "games/finale"

  get "games/info"

  get "complaints/index"

  get "complaints/show"

  get "complaints/new"

  get "complaints/destroy"

  get "sessions/new"

  resources :users

  get "forum/index"

  get "forum/sports"

  get "forum/tech"

  get "forum/gaming"

  get "forum/myposts"

  get "forum/rules"

  get "home/index"

  get "posts/loadimage"

  resources :sessions

  resources :posts do
    resources :replies
  end

  resources :complaints

  resources :games


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
  match '/forum' => "forum#index", :as => "forum"
  match '/signup' => "users#new", :as => "signup"
  match '/login' => "sessions#new", :as => "login"
  match '/logout' => "sessions#destroy", :as => "logout"
  match '/game' => "game#index", :as => "game"
  match '/myaccount' => "users#show", :as => "myaccount"
  match '/editmyaccount' => "users#edit", :as => "editmyaccount"

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
  root :to => "home#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
