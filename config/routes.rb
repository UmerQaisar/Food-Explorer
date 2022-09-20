Rails.application.routes.draw do
  devise_for :restaurant_owners
  devise_for :customers
  resources :questionnaires, only: [:new, :create]
  resources :reviews, only: [:index, :new, :create] do
    get :nearby, on: :collection
  end

  resources :restaurants

  # get 'home', to: 'reviews#homepage'
  root to: 'reviews#new'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
