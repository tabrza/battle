require 'game'

describe Game do

  let(:player1) { double(:player1, hp:100, deduct_hp: true) }
  let(:player2) { double(:player2, hp:90, deduct_hp:true) }
  subject(:game) { described_class.new(player1, player2) }

  describe '#initialize' do
    it 'responds to player1' do
      expect(game.player1).to eq player1
    end
    it 'responds to player2' do
      expect(game.player2).to eq player2
    end
  end

  describe'#attack' do
    context 'when player1 attacks player2' do
      it 'turn changes' do
        game.attack
        expect(game.turn).to eq 2
      end
    end
    context 'when player2 attacks player1' do
      it 'turn changes' do
        game.attack
        game.attack
        expect(game.turn).to eq 1
      end
    end
  end


end
