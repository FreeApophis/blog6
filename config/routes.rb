Rails.application.routes.draw do
  resources :tags
  root 'blog_posts#index'

  concern :commentable do
    resources :comments, only: [:create]
  end

  devise_for :users

  resources :blog_posts, only:[:show, :index], concerns: [:commentable]
  resources :pages, only: [:show, :index], concerns: [:commentable]
end
