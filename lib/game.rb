class Game

  attr_reader :player1, :player2, :current_player

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = player1
  end

  def attack
    target.receive_damage
  end

  def change_player
    if @current_player == player1
      @current_player = player2
    else
      @current_player = player1
    end
  end

  def target
    if @current_player == @player1
      @player2
    else
      @player1
    end
  end
end
