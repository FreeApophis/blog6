Rails.application.routes.draw do
  resources :pages
  resources :tenants
  resources :blog_posts
  root 'blogs#index'
  resources :blogs
end
