Rails.application.routes.draw do
  devise_for :users
  resources :runs
  root 'runs#index'
end
