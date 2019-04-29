Rails.application.routes.draw do
  resources :blog_posts
  root 'blogs#index'
  resources :blogs
end
