Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "home#index"
  resources :users, only: [:show]
  get 'account', to: 'users#profile'

  resources :questions do
    resource :vote, only: [:update]
    resources :answers, only: [:create]
  end

  resources :taggings, param: :tag
end
