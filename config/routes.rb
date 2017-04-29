Rails.application.routes.draw do
  root to: "users/sessions#new"

  namespace :users do
    resources :sessions
    resources :apps, only: [:index]
    resources :landslides, only: [:show]
  end

  match 'auth/:provider/callback', to: 'users/sessions#create', via: [:get, :post]
  match 'auth/failure', to: redirect('/'), via: [:get, :post]
  match 'signout', to: 'users/sessions#destroy', as: 'signout', via: [:get, :post]

end
