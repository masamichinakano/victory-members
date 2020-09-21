Rails.application.routes.draw do
  devise_for :users
  root to: 'members#index'
  resources :members do
    resources :defences, only: [:index, :create]
    collection do
      get "player"
    end
  end
end
