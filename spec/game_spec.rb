require 'game'

describe Game do
  subject(:game) { described_class.new(player1, player2) }
  let(:player1) { double :player1, receive_damage: nil, hp: 100 }
  let(:player2) { double :player2, receive_damage: nil, hp: 100 }

  describe '#initialize' do
    it 'sets player 1 as an instance variable' do
      expect(game.player1).to eq player1
    end

    it 'sets player 2 as an instance variable' do
      expect(game.player2).to eq player2
    end
  end

  describe '#attack' do
    it "delegates to player to reduce hit points" do
      game.attack
      expect(player2).to have_received(:receive_damage)
    end
  end

  describe '#change_player' do
    it 'switches player' do
      game.change_player
      expect(game.current_player).to eq player2
    end
  end

  describe '#target' do
    it 'returns the non-current player' do
      expect(game.target).to eq player2
    end

    it 'returns the non-current player after switching' do
      game.change_player
      expect(game.target).to eq player1
    end
  end

  describe '#gameover?' do
    it 'returns false if both player\'s HP is over 100' do
      expect(game.gameover?).to eq false
    end

    it 'returns true if a player\'s HP is less than 1' do
      allow(player2).to receive(:hp).and_return(0)
      expect(game.gameover?).to eq true
    end
  end
end
