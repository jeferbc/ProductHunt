Rails.application.routes.draw do
  root 'products#index'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  resources :users, only:[:new, :create]
  resources :products do
    resources :votes, only: [:create, :destroy]
    resources :comments, only: [:create]
  end
end
