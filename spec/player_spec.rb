require 'player'

describe Player do
  subject(:player) { described_class.new('Ed') }
  let(:player2) { double :player2, receive_damage: nil }

  it 'returns its own name' do
    expect(player.name).to eq 'Ed'
  end

  it 'returns its hit points' do
    expect(player.hp).to eq 100
  end

  describe '#receive_damage' do
    it 'deducts hit points' do
      expect(player.receive_damage).to eq 90
    end
  end
end
