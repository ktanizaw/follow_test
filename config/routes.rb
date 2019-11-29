Rails.application.routes.draw do
  get 'relationships/create'
  get 'relationships/destroy'
  resources :users, only: [:index]
  resources :blogs
  resources :relationships, only: [:create, :destroy]
end
