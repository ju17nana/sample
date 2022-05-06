Rails.application.routes.draw do
  get 'comments/create'
  resources :boards
  
  root to: 'posts#index'
  resources :posts do
    resources :comments
  end
end
