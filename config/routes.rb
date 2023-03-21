Rails.application.routes.draw do
  get 'login/create', to: 'logins#create', as: :create_login
  devise_for :users
  root to: "pages#home"

  resources :options
  resources :choices, only: %i[index show]


end
