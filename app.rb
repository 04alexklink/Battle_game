require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class Battle < Sinatra::Base
  enable :sessions
  get '/' do
    erb:index
  end

  post '/attack' do
    session[:player_1_attack_state] = true
    # $player2.attacked
    @game = $game
    @game.attack(@game.player2)
    @game.switch_turns
    redirect '/players'
  end

  post '/names' do
    player_1 = Player.new(params[:First_Player_Name])
    player_2 = Player.new(params[:Second_Player_Name])
    $game = Game.new(player_1, player_2)
    redirect '/players'
  end

  get '/players' do
    # @First_Player_Name = $player1.name
    # @Second_Player_Name = $player2.name
    @player_1_attack_state = session[:player_1_attack_state]
    # @First_Player_hp = $player1.hp
    # @Second_Player_hp = $player2.hp
    @game = $game
    erb:players
  end
  run! if app_file == $0
end 
