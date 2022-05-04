Rails.application.routes.draw do
  root 'discussions#index'

  devise_for :users
  resources :categories
  resources :discussions do
    resources :posts, only: %i[create show edit update destroy], module: [:discussions]

    collection do
      get 'category/:id', to: 'categories/discussions#index', as: :category
    end
  end

  get 'discussions/index'
  get 'main/index'
end
