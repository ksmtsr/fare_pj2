Rails.application.routes.draw do
  root 'fares#index'
  resources :fares
end