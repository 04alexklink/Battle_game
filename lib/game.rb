class Game 
    attr_reader :player1, :player2, :current_turn
  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @player1 = player_1
    @player2 = player_2
    @current_turn = player_1
  end
  def attack(player)
    player.attacked
  end
  def switch_turns
    @current_turn = opponent_of(current_turn)
  end
  
  private
  
  def opponent_of(the_player)
    @players.select { |player| player != the_player }.first
  end
end