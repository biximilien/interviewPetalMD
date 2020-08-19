require 'rails_helper'

RSpec.describe Pokemon, type: :model do
  it { should validate_presence_of :number }
  it { should validate_presence_of :name }
  it { should validate_presence_of :type_1 }
  it { should validate_presence_of :total }
  it { should validate_presence_of :hp }
  it { should validate_presence_of :attack }
  it { should validate_presence_of :defense }
  it { should validate_presence_of :sp_atk }
  it { should validate_presence_of :sp_def }
  it { should validate_presence_of :speed }
  it { should validate_presence_of :generation }
  it { should validate_presence_of :legendary }

  describe ".search" do
    subject { Pokemon }
    it "searches for matching Pokemons" do
      records = subject.search('Pikachu').records
      expect(records).not_to be nil
      expect(records.first.name).to eq 'Pikachu'
    end
  end
end
