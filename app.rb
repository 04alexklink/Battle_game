require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    erb:index
  end
  post '/names' do
   @First_Player_Name = params[:First_Player_name]
   @Second_Player_Name = params[:Second_Player_Name]
   erb:players
  end
  run! if app_file == $0
end 
