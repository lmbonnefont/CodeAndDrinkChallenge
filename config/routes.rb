Rails.application.routes.draw do

  get '/users/:user_id/games/:game_id/survivorselection', to: 'games#survivorselection', as: :user_game_survivorselection #un peu dégueu mais fonctionne ... A voir s'il n'y a pas mieux
  post '/users/:user_id/games/:game_id/resultsround', to: 'games#resultsround', as: :user_game_resultsround #un peu dégueu mais fonctionne ... A voir s'il n'y a pas mieux
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:new, :create] do
    resources :games, only: [:new, :create, :index, :destroy, :show] do
      resources :bettors, only: [:create, :new, :index]
      resources :players, only: [:create, :new, :index]
      resources :bets, only: [:new, :create]
    end
  end
end
