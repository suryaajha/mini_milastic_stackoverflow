Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "home#index"
  get 'account', to: 'users#show'

  resources :questions
  post 'account', to: 'users#test'
end
