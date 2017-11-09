require 'game'

describe Game do

  subject(:game) { described_class.new }
  let(:player2) { double(:player2, hp:90, deduct_hp:true) }

  describe'#attack' do
    context 'when player1 attacks player2' do
      it 'reduces player2 hp by 10' do
        expect(game.attack(player2)).to eq true
      end
    end
  end


end
