Rails.application.routes.draw do
  get 'receiptors/new'
  get 'receiptors/create'

  devise_for :users

  root to: "pages#home"

  resources :choices, only: %i[index show create new edit] do
    resources :receiptors
    resources :options do
    resources :option_choices, only: :create
  end
end

end
