Rails.application.routes.draw do

  authenticated :user do
    root :to => 'welcome#index', as: :authenticated_root
  end

  root to: 'links#index'

  resources :posts
  get 'welcome/index'

  get 'articles/index'
  get 'articles/show'
  get 'articles/new'
  get 'articles/update'
  get 'articles/destroy'
  get 'tweets/index'
  get 'tweets/show'
  get 'tweets/new'
  get 'tweets/update'
  get 'tweets/destroy'
  post 'articles/index'
  post 'tweets/index'
  get 'links/index'

  resources :tags
  resources :comments
  devise_for :users
  resources :links do
    member do
      put 'like', to: 'links#upvote'
      put 'dislike', to: 'links#downvote'
    end
    resources :comments
  end

end
