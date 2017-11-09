require 'player'

describe Player do

  let(:player1) { described_class.new('John') }
  let(:player2) { described_class.new('Doe') }

  describe '#new player attributes' do
    it 'should return player name' do
      expect(player1.name).to eq 'John'
    end
    it 'should return 100 HP' do
      expect(player1.hp).to eq 100
    end
  end

  describe'#attack' do
    context 'when player1 attacks player2' do
      it 'reduces player2 hp by 10' do
        expect{ player1.attack(player2) }.to change { player2.hp }.by -10
      end
    end
  end
end
