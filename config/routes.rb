Rails.application.routes.draw do
  resources :wedding_groups
  root 'root#show'

  #mount ActiveStorage::Engine, at: '/admin/rails/active_storage'

  concern :commentable do
    resources :comments, only: [:create]
  end

  devise_for :users

  resources :blog_posts, only:[:show, :index], concerns: [:commentable]
  resources :pages, only: [:show, :index], concerns: [:commentable]
  resources :tags, only: [:show, :index]

  get 'rsvp/login', to: 'wedding_groups#login'
  post 'rsvp/login', to: 'wedding_groups#login'
  get 'rsvp/logout', to: 'wedding_groups#logout'
  get 'rsvp/update', to: 'wedding_groups#edit'
  put 'rsvp/update', to: 'wedding_groups#update'
end
