Rails.application.routes.draw do
  get 'login/create', to: 'logins#create', as: :create_login
  devise_for :users

  root to: "pages#home"

  resources :choices, only: %i[index show create] do
    resources :options do
    resources :option_choices, only: :create
  end
end

end
