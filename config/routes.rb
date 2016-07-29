Rails.application.routes.draw do
  devise_for :users

  root 'prototypes#index'
  resources :users, only: [:show, :edit, :update]
  resources :prototypes do
    scope module: :prototypes do
    resources :newest, only: :index
    resources :popular, only: :index
    end
    resources :comments, only: [:create]
    resources :likes, only: [:create, :destroy]
  end
end
