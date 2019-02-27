Rails.application.routes.draw do
  root to: "restaurants#index"
  resources :restaurants, only: [ :index, :new, :create, :show] do
    resources :reviews, only: [ :new, :create]
  end
  #  resources :reviews, only: [:show, :edit, :update, :destroy]
  # get "restaurants/:id", to: "restaurants#show"
  # get "reviews/:id", to: "reviews#show"
  # get "reviews/:id/edit", to: "reviews#edit"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
