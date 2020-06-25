require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions
  get '/' do
    erb:index
  end
  post '/names' do
    session[:First_Player_Name] = params[:First_Player_Name]
    session[:Second_Player_Name] = params[:Second_Player_Name]
    redirect '/players'
  end

  get '/players' do
    @First_Player_Name = session[:First_Player_Name]
    @Second_Player_Name = session[:Second_Player_Name]
    erb:players
  end
  run! if app_file == $0
end 
