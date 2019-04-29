Rails.application.routes.draw do
  root 'blogs#index'

  devise_for :users

  resources :pages
  resources :tenants
  resources :blog_posts
  resources :blogs
end
