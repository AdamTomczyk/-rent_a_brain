Rails.application.routes.draw do
  devise_for :users
  resources :users, :only => [:show]

  #path: '',
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :brains do
    resources :reviews, only: [:create]
  end
end
