Rails.application.routes.draw do
  root to: 'customers#index'
  resources :customers, :orders
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
