class Pokemon < ApplicationRecord

  # Pagination (50 pokemons per page)
  paginates_per 50

  validates :number,
    presence: true

  validates :name,
    presence: true

  validates :type_1,
    presence: true

  validates :type_2,
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

  validates :legendary,
    presence: true

end
