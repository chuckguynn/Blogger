Blogger::Application.routes.draw do
  get "tags/index"

  resources :articles
  resources :comments
  resources :tags

  
  get "tags/show"

  resources :articles
  resources :comments
  resources :tags

end