require 'player'

describe Player do
  subject(:player) { described_class.new('Alex') }
  let(:player2) { double :player2, receive_damage: nil }

  it 'returns its own name' do
    expect(player.name).to eq 'Alex'
  end

  it 'returns its hit points' do
    expect(player.hit_points).to eq 100
  end

  describe '#receive_damage' do
    it 'deducts hit points' do
      expect(player.receive_damage).to eq 90
    end
  end

  describe '#attack' do
    it 'reduces target\'s hit points' do
      player.attack(player2)
      expect(player2).to have_received(:receive_damage)
    end
  end
end
