require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class Battle < Sinatra::Base
  enable :sessions
  get '/' do
    erb:index
  end

  post '/p1attack' do
    session[:player_1_attack_state] = true
    # $player2.attacked
    Game.new.attack($player2)
    redirect '/players'
  end

  post '/names' do
    $player1 = Player.new(params[:First_Player_Name])
    $player2 = Player.new(params[:Second_Player_Name])
    redirect '/players'
  end

  get '/players' do
    @First_Player_Name = $player1.name
    @Second_Player_Name = $player2.name
    @player_1_attack_state = session[:player_1_attack_state]
    @First_Player_hp = $player1.hp
    @Second_Player_hp = $player2.hp
    erb:players
  end
  run! if app_file == $0
end 
