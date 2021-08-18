Rails.application.routes.draw do
  devise_for :users
  resources :users, :only => [:show]

  root to: 'pages#home'
  #path_names: {sign_in: 'login', sign_out: 'logout', edit: 'profile'}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :brains do
    resources :reviews, only: [:create]
    resources :bookings, only: [:create, :new, :show]
  end

  resources :bookings, only: [:delete]
end
