Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :stars, only: [:index, :show] do
    resources :bookings, only: [:create]
  end

  namespace :host do
    resources :stars, only: [:new, :create]

    resources :bookings, only: [] do
      member do
        patch :accept
        patch :decline
      end
    end

  end

  resource :dashboard, only: :show
end
  # Defines the root path route ("/")
  # root "articles#index"
