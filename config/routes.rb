Rails.application.routes.draw do
  namespace :admin do
    root 'posts#index'
    resources :posts, except: :show
  end

  root 'posts#index'
  resources :posts, only: [:show, :index]
end
