Rails.application.routes.draw do
  post "/graphql", to: "graphql#execute"
  namespace :admin do
    root 'posts#index'
    resources :posts, except: :show
  end

  resources :subscribers, only: [:create]
end
