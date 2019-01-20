Rails.application.routes.draw do
  
  resources :posts
  # get 'posts', to: 'posts#index'
  # get 'show', to: 'posts#show'
  root to: 'posts#index'

end
