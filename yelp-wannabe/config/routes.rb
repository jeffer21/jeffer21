Rails.application.routes.draw do
  resources :foods
  resources :restaurants do
    resources :reviews, only: [:create]
    end

    root to: "restaurants#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
