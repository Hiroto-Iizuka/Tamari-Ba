Rails.application.routes.draw do
  devise_for :users
  root :to => 'home#index'

  resources :roads, only: [:index, :show]
    namespace :admin do
      resources :roads, only: [:index, :new, :create, :show, :edit, :destroy]
    end
end
