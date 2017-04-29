Rails.application.routes.draw do
  root '/landing_pages'
  resources :landing_pages, only: [:index]
end
