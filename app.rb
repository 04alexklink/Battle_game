require 'sinatra/base'
require 'player.rb'

class Battle < Sinatra::Base
  enable :sessions
  get '/' do
    erb:index
  end

  post '/p1attack' do
    session[:player_1_attack_state] = true
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
    erb:players
  end
  run! if app_file == $0
end 
