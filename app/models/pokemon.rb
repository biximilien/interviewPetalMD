class Pokemon < ApplicationRecord
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

  # Pagination (50 pokemons per page)
  paginates_per 50

  validates :number,
    presence: true

  validates :name,
    presence: true

  validates :type_1,
    presence: true

  validates :total,
    presence: true

  validates :hp,
    presence: true

  validates :attack,
    presence: true

  validates :defense,
    presence: true

  validates :sp_atk,
    presence: true

  validates :sp_def,
    presence: true

  validates :speed,
    presence: true

  validates :generation,
    presence: true

end
