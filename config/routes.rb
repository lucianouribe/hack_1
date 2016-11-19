Rails.application.routes.draw do
  devise_for :users
  root 'restaurants#index'

  resources :restaurants do
    resources :orders
  end
  resources :orders do
    resources :deliveries
  end

end
