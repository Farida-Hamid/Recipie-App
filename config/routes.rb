Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'users#index'
  get 'recipe/index'
  get 'recipe/new'
  post 'recipe/create'
  get 'recipe/destroy/:id', to: 'recipe#destroy', as: 'delete_recipe'
end
