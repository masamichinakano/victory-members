Rails.application.routes.draw do
  devise_for :users
  root to: 'teams#index'
  resources :teams do
  
    resources :members do
      collection do
        get "player"
      end
      collection do
        get "team"
      end
    end
    resources :defences
  end

end
