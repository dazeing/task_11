Rails.application.routes.draw do
  devise_for :users, controllers: {omniauth_callbacks: "omniauth_callbacks"}
  get 'users/index'

  resources :users
  resources :friends, controller: :users,  type: "Friend"
  resources :enemies, controller: :users,  type: "Enemy"
  resources :neutralities, controller: :users,  type: "Neutrality"

  root 'users#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
