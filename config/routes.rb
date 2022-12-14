Rails.application.routes.draw do
  devise_for :users, sign_out_via: [:get, :post]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :users, :foods, :public_recipes, :shopping_lists
  
  resources :recipes do
    resources :recipe_foods, only: [:new, :create, :destroy]
  end

  # Defines the root path route ("/")
  # root "articles#index"
  root "foods#index"
  
end
