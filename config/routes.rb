Rails.application.routes.draw do
  devise_for :users
  root to: "tweets#index"
  resources :users, only: [:show] do
    resources :tweets do
      resource :likes, only: [:create, :destroy]
      resources :messages, only: [:create, :destroy]
    end
  end
end
