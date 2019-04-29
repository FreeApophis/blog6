Rails.application.routes.draw do
  devise_for :users
  root 'blogs#index'

  resources :pages
  resources :tenants
  resources :blog_posts
  resources :blogs
end
