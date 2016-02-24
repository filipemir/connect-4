require 'spec_helper'
require_relative '../../lib/cell.rb'
RSpec.describe Cell do

  let(:cell) { Cell.new }

  describe '#new' do
    it 'initiates a new cell' do
      expect(cell).to be_a(Cell)
    end

    it 'returns nil for player' do
      expect(cell.who_played).to eq(nil)
    end
  end

  describe '#who_played' do
    it 'assigns and retrieves a player to the cell' do
      cell.who_played = 1
      expect(cell.who_played).to eq(1)
    end
  end
end