Rails.application.routes.draw do
  # get 'reviews/new'
  # get 'reviews/create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # THE FOLLOWING GETS CREATED WHEN GENERATING THE CONTROLLER INCL ALL CRUD METHODS
  # get 'restaurants/index'
  # get 'restaurants/show'
  # get 'restaurants/new'
  # get 'restaurants/create'
  # get 'restaurants/edit'
  # get 'restaurants/update'
  # get 'restaurants/destroy'
  # BUT NOT NEEDED AS WE USE RESOURCES (BUT NOT ALL OF THEM)
  resources :restaurants, only: [:index, :new, :show, :create ] do
    # lets you start from a particular restaurant: a /restaurants/:restaurant_id
    resources :reviews, only: [:new, :create]
  end
end
