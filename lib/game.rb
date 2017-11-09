class Game

  attr_reader :player1, :player2, :turn, :attacked_player

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @turn = 1
  end

  def attack
    if @turn == 1
      player_attack(@player2)
      @turn = 2
    else
      player_attack(@player1)
      @turn = 1
    end
  end

  private

  def player_attack(player)
    player.deduct_hp
    @attacked_player = player
  end

end
