Rails.application.routes.draw do
  root 'fare#index'
  resources :fare
end