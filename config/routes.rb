Rails.application.routes.draw do
  namespace :admin do
    root 'posts#index'
    resources :posts, except: :show
  end

  post "/graphql", to: "graphql#execute"
  resources :subscribers, only: [:create]
end
