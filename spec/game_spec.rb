require 'game'

describe Game do

  let(:player1) { double(:player1, hp:100, deduct_hp: true) }
  let(:player2) { double(:player2, hp:90, deduct_hp:true) }
  subject(:game) { described_class.new(player1, player2) }

  describe '#initialize' do
    it 'respods to player1' do
      expect(game.player1).to eq player1
    end
    it 'responds to player2' do
      expect(game.player2).to eq player2
    end
  end

  describe'#attack' do
    context 'when player1 attacks player2' do
      it 'reduces player2 hp by 10' do
        expect(game.attack(player2)).to eq true
      end
    end
  end


end
