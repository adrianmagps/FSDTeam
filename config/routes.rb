Rails.application.routes.draw do

  devise_for :users
  devise_scope :user do
    get 'sign_in', to: 'devise/sessions#new'
  end

  get 'tag/index'

  get 'category/:id' => 'blog#by_category', :as => :posts_category
  get 'tag/:id' => 'blog#by_tag', :as => :posts_tag
  get 'date/:year/:month' => 'blog#by_date', :as => :posts_date
  match 'blog/post/:id' => 'blog#show', :as => :post_details, :via => 'get'

  resources :blog do
    resource :comment
  end
  resources :portfolio
  resources :categories

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
