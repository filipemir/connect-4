require_relative '../../lib/player.rb'
require_relative '../../lib/cell.rb'
require_relative '../../lib/grid.rb'

RSpec.describe Grid do

  let(:grid) { Grid.new }
  let(:random_cell) { grid.cells.sample.sample }

  describe '#new' do
    it 'initiates a new Grid object' do
      expect(grid).to be_a(Grid)
    end

    it 'fills every cell with a Cell object' do
      expect(random_cell).to be_a(Cell)
      expect(random_cell.who_played).to eq(nil)
    end
  end

  describe '#rows' do
    it 'returns number of rows' do
      expect(grid).to eq(6)
    end
  end

  describe '#columns' do
    it 'returns number of columns' do
      expect(grid).to eq(7)
    end
  end

  describe 'pull_cell' do
    
  end

  describe 'add_to_column' do
    it 'adds to column if column exists and has at least one open cell' do
      
    end

    it 'returns false if column does not exist or is full' do
      
    end
  end

  describe '#print' do
    it 'prints grid to terminal' do
      
    end
  end

  describe "#4_in_a_row?" do
    it "returns true if 4 in a row"  do
      
    end    
  end
end
