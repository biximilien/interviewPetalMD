Rails.application.routes.draw do

  # root
  root to: 'pages#home'

  # authentication
  devise_for :users

  namespace :api, defaults: { format: 'json' }, constraints: lambda { |r| r.format == :json } do
    # pokemons
    resources :pokemons, only: [:index, :show, :create, :update, :destroy]
  end

end
