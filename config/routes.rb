Rails.application.routes.draw do
  devise_for :users
  root to: 'members#index'
  # resources :members
end
