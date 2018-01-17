require 'game'

describe Game do
  subject(:game) { described_class.new }
  let(:player2) { double :player2, receive_damage: nil }

  describe '#attack' do
    it 'damages the player' do
      game.attack(player2)
      expect(player2).to have_received(:receive_damage)
    end
  end
end
