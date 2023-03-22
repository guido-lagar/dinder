Rails.application.routes.draw do
  get 'login/create', to: 'logins#create', as: :create_login
  devise_for :users
  root to: "pages#home"

  resources :options
<<<<<<< HEAD
  resources :choices, only: %i[index show]


=======
  resources :choices
>>>>>>> c8c2aa38877599e8c582e6a3ea98946965df61cb
end
