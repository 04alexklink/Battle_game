require 'game'
describe Game do 
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player }
  let(:player_2) { double :player }
    
  describe '#initialize' do
    it 'initalizes a game with 2 players inputted' do
      expect(game.player1).to eq(player_1)
      expect(game.player2).to eq(player_2)
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(player_2).to receive(:attacked)
      game.attack(player_2)
    end
  end
  describe '#current_turn' do
    it 'starts as player 1' do
      expect(game.current_turn).to eq player_1
    end
  end
  describe '#switch_turns' do
  it 'switches the turn' do
    game.switch_turns
    expect(game.current_turn).to eq player_2
  end
end
end


    
