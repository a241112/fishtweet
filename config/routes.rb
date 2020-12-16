Rails.application.routes.draw do
  devise_for :users
  root to: "tweets#index"
  resources :tweets, only: [:show] do
    resources :messages, only: [:create, :destroy]
  end
  resources :users, only: [:show] do
    resources :tweets, only: [:index, :create, :new, :edit, :update, :destroy] do
      resource :likes, only: [:create, :destroy]
    end
  end
end
