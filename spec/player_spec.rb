require 'player'

describe Player do

  subject(:player) { described_class.new('John') }

  describe '#name' do
    it 'should return player name' do
      expect(player.name).to eq 'John'
    end
  end
end
