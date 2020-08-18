require 'rails_helper'
require 'json'

RSpec.describe "Pokemons", type: :request do

  describe "GET /pokemons" do
    it "returns http success" do
      get "/pokemons"
      expect(response).to have_http_status(:success)
      data = JSON.parse(response.body)
      expect(data).to be_an Array
      expect(data.count).to eq 800
    end
  end

  describe "GET /pokemons/1" do
    it "returns http success" do
      get "/pokemons/1"
      expect(response).to have_http_status(:success)
      data = JSON.parse(response.body)
      expect(data).to be_a Hash
      expect(data['name']).to eq 'Bulbasaur'
    end
  end

  describe "POST /" do
    it "returns http success" do
      post "/pokemons", params: {
        pokemon: {
          number: '722',
          name: 'Pikablu',
          type_1: 'Water',
          type_2: 'Electric',
          total: 600,
          hp: 100,
          attack: 100,
          defense: 100,
          sp_atk: 100,
          sp_def: 100,
          speed: 100,
          generation: 1,
          legendary: true
        }
      }
      expect(response).to have_http_status(:success)
    end
  end

  describe "PUT /pokemons/1" do
    it "returns http success" do
      put "/pokemons/1", params: { pokemon: { name: 'Bubasaur' }}
      expect(response).to have_http_status(:success)
    end
  end

  describe "PATCH /pokemons/1" do
    it "returns http success" do
      patch "/pokemons/1", params: { pokemon: { name: 'Bubusaur' }}
      expect(response).to have_http_status(:success)
    end
  end

  describe "DELETE /pokemons/722" do
    it "returns http success (no content)" do
      delete "/pokemons/722"
      expect(response).to have_http_status(:no_content)
    end
  end

end
