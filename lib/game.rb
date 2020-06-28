class Game 
    attr_reader :player1, :player2
  def initialize(player_1, player_2)
  @player1 = player_1
  @player2 = player_2
  end
  def attack(player)
    player.attacked
  end
end