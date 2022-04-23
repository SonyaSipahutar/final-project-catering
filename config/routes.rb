Rails.application.routes.draw do
  resources :reports
  resources :orders do
    resources :order_details
  end
  resources :categories
  resources :menu_items
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
