Rails.application.routes.draw do
  #get "up" => "rails/health#show", as: :rails_health_check
  root to: 'films#index'
  resources :films, only: [:new, :create, :show, :edit, :update] do 
    patch :publish, on: :member
    patch :release, on: :member
  end
  resources :genres, only: [:index, :new, :create, :show, :edit, :update]
  resources :filmmakers, only: [:index, :new, :create, :show, :edit, :update]
end
