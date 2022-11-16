Rails.application.routes.draw do
  # get 'foods/index'
  # get 'foods/show'
  # get 'foods/new'
  # get 'foods/create'
  # get 'users/index'

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
