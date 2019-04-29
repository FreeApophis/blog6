Rails.application.routes.draw do
  root 'blogs#index'

  resources :pages
  resources :tenants
  resources :blog_posts
  resources :blogs
end
