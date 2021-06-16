Rails.application.routes.draw do
  resources :ingredient_x_dishes
  resources :ingredientx_tags
  resources :dishx_tags
  resources :ingredient_tags
  resources :dish_tags
  resources :ingredients
  resources :dishes
  resources :menus
  resources :restaurants
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
