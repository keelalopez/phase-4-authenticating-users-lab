Rails.application.routes.draw do
  resources :articles, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Sessions controller
  post "/login", to: "sessions#create"
  delete "/logoout", to: "sessions#destroy"

  # Users controller
  get "/me", to: "users#show"

end
