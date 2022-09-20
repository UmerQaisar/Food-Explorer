Rails.application.routes.draw do
  devise_for :customers
  resources :questionnaires, only: [:new, :create]
  resources :reviews, only: [:index, :new, :create] do
    get :nearby, on: :collection
  end

  get 'home', to: 'reviews#homepage'
  root to: 'reviews#new'

  namespace 'restaurant' do
    resources :questionnaires, only: [:new, :create]
    resources :restaurants do
      get :my_restaurant, on: :collection
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
