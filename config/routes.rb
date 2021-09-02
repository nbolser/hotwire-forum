Rails.application.routes.draw do
  get 'discussions/index'
  devise_for :users
  root 'main#index'

  resources :discussions

  get 'main/index'
end
