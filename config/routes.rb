Rails.application.routes.draw do
  root "posts#index"

  resources :posts
  resources :users

  get 'signup', to: 'users#new', as: 'signup'
end
