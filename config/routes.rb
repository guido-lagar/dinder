Rails.application.routes.draw do
  get 'options/show'
  devise_for :users
  root to: "pages#home"

  resources :options
  resources :choices
end
