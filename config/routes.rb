Rails.application.routes.draw do
  namespace :admin do
    root 'posts#index'
    resources :posts, except: :show
  end

  root 'posts#index'
  resources :posts, only: [:show, :index] do
    resources :comments, only: [:new, :create]
  end
  resources :subscribers, only: [:new, :create]
end
