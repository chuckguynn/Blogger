Blogger::Application.routes.draw do
  
  resources :authors

  root :to => 'articles#index'

  resources :author_sessions

  match 'login'  => 'author_sessions#new',     :as => :login
  match 'logout' => 'author_sessions#destroy', :as => :logout



  get "tags/index"

  resources :articles
  resources :comments
  resources :tags

  
  get "tags/show"

  resources :articles
  resources :comments
  resources :tags

end