Rails.application.routes.draw do
  devise_for :customers
  resources :questionnaires, only: [:new, :create]
  resources :reviews, only: [:index, :new, :create]
  get 'home', to: 'reviews#homepage'
  root to: 'reviews#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
