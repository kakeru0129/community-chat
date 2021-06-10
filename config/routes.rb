Rails.application.routes.draw do
  get 'rooms/index'
  devise_for :users
  get 'messages/index'
  root to: "rooms#index"
  resources :users, only: [:edit, :update]
  resources :rooms, only: [:index, :new]
end
