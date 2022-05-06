Rails.application.routes.draw do
  get 'comments/create'
  get 'boards/index'
  get 'boards/show'
  get 'boards/new'
  get 'boards/edit'
  
  root to: 'posts#index'
  resources :posts
end
