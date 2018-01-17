require 'player'

describe Player do
  subject(:player) { described_class.new('Alex') }

  it 'returns its own name' do
    expect(player.name).to eq 'Alex'
  end
end
