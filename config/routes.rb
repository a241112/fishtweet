Rails.application.routes.draw do
  devise_for :users
  root to: "tweets#index"
  resources :tweets do
    resources :messages, only: [:create, :destroy]
  end
end
