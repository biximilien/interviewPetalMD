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

  validates :generation,
    presence: true

  before_validation :compute_total

  protected

    def compute_total
      self.total = hp + attack + defense + sp_atk + sp_def + speed
    end

end
