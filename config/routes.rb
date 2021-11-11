Rails.application.routes.draw do
  get 'discussions/index'
  devise_for :users
  root 'main#index'

  resources :discussions do
    resources :posts, only: [:create], module: [:discussions]
  end

  get 'main/index'
end
