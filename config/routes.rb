Rails.application.routes.draw do
  get 'discussions/index'
  devise_for :users
  root 'main#index'

  resources :discussions, only: [:index]

  get 'main/index'
end
