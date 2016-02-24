require_relative '../../lib/player.rb'
require_relative '../../lib/grid.rb'

RSpec.describe do

  let(:player1) { Player.new('Filipe') }
  

  describe '#initialize' do
    it 'initiates a new player instance with supplied name' do
      expect(player1).to be_a(Player)
      expect(player1.name).to eq('Filipe')
      expect(player1.piece).to eq('X')
      expect(player1.number).to eq(1)
    end
  end

  describe '#move' do
    it 'prompts a user to enter a column number' do
      expect { player1.move }.to output(/Please choose a column letter/).to_stdout
    end

    it 'validates a users column input' do
      allow(player1).to receive(:gets).and_return('A').exactly(6).times
      6.times do
        player1.move
      end
      expect { player1.move }.to output(/Column full. Please pick another one./).to_stdout
    end

    it 'changes state of cell if input is valid' do
      allow(player1).to_receive(:gets)/and_return('B')
      player1.move
      expect(grid.pull_cell('B1').who_played).to eq(player1.number)
    end
  end
end