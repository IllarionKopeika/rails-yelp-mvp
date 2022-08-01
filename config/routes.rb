Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "stadia#index"
  resources :stadia do
    resources :teams, only: [:new, :create]
  end
end
