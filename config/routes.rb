Rails.application.routes.draw do

  # root
  root to: 'pages#home'

  # authentication
  devise_for :users

  # pokemons
  resources :pokemons, only: [:index, :show, :create, :update]

end
