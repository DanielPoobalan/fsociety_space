Rails.application.routes.draw do
  root to: "landing_pages#index"
  resources :landing_pages, only: [:index]
end
