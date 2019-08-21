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
  resources :wedding_groups, only: [:show, :index, :edit, :update], path: :anmelden
end
