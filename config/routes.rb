Rails.application.routes.draw do
  root 'blog_posts#index'

  concern :commentable do
    resources :comments, only: [:create]
  end

  devise_for :users

  resources :blogs
  resources :blog_posts, only:[:show,:index], concerns: [:commentable]

  resources :pages

  resources :domains
  resources :tenants
end
