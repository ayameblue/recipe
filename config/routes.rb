Rails.application.routes.draw do
  get 'recipes/index'
  devise_for :users
  root "recipes#index"
  resources :recipes
end
