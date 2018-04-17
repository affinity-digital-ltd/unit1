Rails.application.routes.draw do
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end

  post "/graphql", to: "graphql#execute"
  namespace :admin do
    root 'posts#index'
    resources :posts, except: :show
  end

  root 'posts#index'
  resources :posts, only: [:show, :index] do
    resources :comments, only: [:new, :create]
  end
  resources :subscribers, only: [:new, :create]

  # Auth0
  get "/auth/oauth2/callback" => "auth0#callback"
  get "/auth/failure" => "auth0#failure"
end
