json.array! @pokemons do |pokemon|
  json.partial! 'api/pokemons/pokemon', pokemon: pokemon
end
