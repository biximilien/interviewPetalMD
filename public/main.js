$(document).ready(function() {
  updatePokes();
})

function updatePokes(e) {
  if (event) {
    event.preventDefault();
  }

  var q = $('input[name="q"]').val();
  var tbody = $('table#pokemons-table > tbody');

  if (q === "") {
    $.ajax({
      url: '/api/pokemons',
      success: (data, status, xhr) => {
        tbody.empty()
        data.forEach((pokemon) => { appendPokemon(tbody, pokemon) });
      }
    });
  } else {
    $.ajax({
      url: '/api/pokemons',
      data: { 'q': q },
      success: (data, status, xhr) => {
        tbody.empty()
        data.forEach((pokemon) => { appendPokemon(tbody, pokemon) });
      }
    });
  }
}

function appendPokemon(tbody, pokemon) {
  tbody.append(`
    <tr>
      <td>${pokemon.number}</td>
      <td>${pokemon.name}</td>
      <td>${pokemon.type_1}</td>
      <td>${pokemon.type_2 == null ? '' : pokemon.type_2}</td>
      <td>${pokemon.total}</td>
      <td>${pokemon.attack}</td>
      <td>${pokemon.defense}</td>
      <td>${pokemon.sp_atk}</td>
      <td>${pokemon.sp_def}</td>
      <td>${pokemon.speed}</td>
      <td>${pokemon.generation}</td>
      <td>${pokemon.legendary == true ? 'Yes' : 'No'}</td>
      <td>
        <form>
          <input type="button" value="Delete" class="button is-danger is-small">
        </form>
      </td>
    </tr>
  `);
}
