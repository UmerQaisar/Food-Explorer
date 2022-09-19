Rails.application.routes.draw do
  devise_for :customers
  resources :questionnaires, only: [:new, :create]
  get 'home', to: 'home#homepage'
  root to: 'home#homepage'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
