Rails.application.routes.draw do
  get 'login/create', to: 'logins#create', as: :create_login
  devise_for :users
  root to: "pages#home"

  resources :options
  resources :choices
  # config/routes.rb
  get '/settings', to: 'settings#edit'
  patch '/settings', to: 'settings#update'
end
