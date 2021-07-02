Rails.application.routes.draw do
  devise_for :users, controllers: { 
    registrations: 'users/registrations',
    password: 'user/passwords'
  }
  devise_scope :user do
    post "users/guest_sign_in", to: "users/sessions#guest_sign_in"
  end
  get 'users/edit_bike' => ''
  get 'users/show' => 'users#show'
  root :to => 'home#index'

  resources :roads, only: [:index, :new, :create, :show, :edit, :update, :destroy]
    namespace :admin do
      resources :roads, only: [:index, :new, :create, :show, :edit, :destroy]
    end
end
