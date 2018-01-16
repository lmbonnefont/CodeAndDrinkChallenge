Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:new, :create] do
    resources :games, only: [:new, :create, :index, :destroy] do
      resources :bettors, only: [:create, :new, :index]
      resources :players, only: [:create, :new, :index]
    end
  end
end
