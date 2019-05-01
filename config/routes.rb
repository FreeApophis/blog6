Rails.application.routes.draw do
  resources :domains
  root 'blogs#index'

  devise_for :users

  resources :pages
  resources :tenants
  resources :blog_posts
  resources :blogs
end
