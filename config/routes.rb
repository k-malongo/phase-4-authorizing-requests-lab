Rails.application.routes.draw do
  resources :articles, only: [:index, :show]
  
  resources :members_only_articles, only: [:index, :show]

  get "/me", to: "users#show"
  get "/users", to: "users#index"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  get "/members_only_articles", to: "members_only_articles#index"
  get "/members_only_articles/:id", to: "members_only_articles#show"
end
