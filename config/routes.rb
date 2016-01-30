Rails.application.routes.draw do
  resources :runs
  root 'runs#index'
end
