class PokemonsController < ApplicationController

  before_action :set_pokemon, only: [:show, :update]

  def index
    @pokemons = Pokemon.all
    render json: @pokemons
  end

  def show
    render json: @pokemon
  end

  def create
    @pokemon = Pokemon.create(pokemon_params)
    render json: @pokemon
  end

  def update
    @pokemon.update(pokemon_params)
    render json: @pokemon
  end

  private

    def set_pokemon
      @pokemon = Pokemon.find(params[:id])
    end

    def pokemon_params
      params.require(:pokemon).permit(:number, :name, :type_1, :type_2, :total, :hp, :attack, :defense, :sp_atk, :sp_def, :speed, :generation, :legendary)
    end
    
end
