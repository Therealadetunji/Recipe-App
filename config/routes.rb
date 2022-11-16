Rails.application.routes.draw do
  devise_for :users, sign_out_via: [:get, :post]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :users
  resources :foods 
  resources :public_recipes

  resources :recipes do
    resources :recipe_foods, only: [:new, :create, :destroy]
  end

  # Defines the root path route ("/")
  # root "articles#index"
  root "users#index"
end
