Rails.application.routes.draw do
  resources :categories
  get 'discussions/index'
  devise_for :users
  root 'main#index'

  resources :discussions do
    resources :posts, only: [:create, :show, :edit, :update, :destroy], module: [:discussions]

    collection do
      get 'category/:id', to:'categories/discussions#index', as: :category
    end
  end

  get 'main/index'
end
