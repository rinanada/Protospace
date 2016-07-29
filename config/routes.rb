Rails.application.routes.draw do
  devise_for :users

  root 'prototypes#index'
  resources :users, only: [:show, :edit, :update]
  resources :prototypes do
    resources :comments, only: [:create]
    resources :likes, only: [:create, :destroy]
  end

  scope module: :prototypes do
   resources :newest, only: :index
  end

  resources :tags, only:[:index,:show]
end
