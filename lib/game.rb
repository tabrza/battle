class Game

  attr_reader :player1, :player2, :turn, :attacked_player

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @turn = 1
  end

  def attack
    if @turn == 1
      @player2.deduct_hp
      @attacked_player = @player2
      @turn = 2
    else
      @player1.deduct_hp
      @attacked_player = @player1
      @turn = 1
    end
  end

end
