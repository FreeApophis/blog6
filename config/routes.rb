Rails.application.routes.draw do
  root 'blogs#index'

  concern :commentable do
    resources :comments, only: [:create]
  end

  devise_for :users

  resources :blogs
  resources :blog_posts, concerns: [:commentable]

  resources :pages

  resources :domains
  resources :tenants
end
