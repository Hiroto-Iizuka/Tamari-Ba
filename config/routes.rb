Rails.application.routes.draw do
  devise_for :users, controllers: { 
    registrations: 'users/registrations',
    passwords: 'users/passwords'
  }
  devise_scope :user do
    post "users/guest_sign_in", to: "users/sessions#guest_sign_in"
  end
  resources :users, only: [:index, :show]

  root :to => 'home#index'

  resources :roads, only: [:index, :new, :create, :show, :edit, :update, :destroy] do
    resources :comments, only: [:create]
    resource :likes, only: [:create, :destroy]
  end
    namespace :admin do
      resources :roads, only: [:index, :new, :create, :show, :edit, :destroy]
    end
end
