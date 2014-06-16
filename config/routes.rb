  Alchemy::Engine.routes.draw do
    resources :locations, only: [:index, :show]

    namespace :admin do
      resources :locations
    end
  end