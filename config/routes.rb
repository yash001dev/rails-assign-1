Rails.application.routes.draw do
  root "physicians#index"
  devise_for :users
  resources :industries
  resources :patients
  resources :physicians do
    resources :appointments, only: [:index, :new, :create, :destroy]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
