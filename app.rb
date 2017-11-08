require 'sinatra/base'

class Battle < Sinatra::Base

  enable  :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    session[:player_2_name] = params[:player_2_name]
    redirect '/play'
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    @player_2_name = session[:player_2_name]
    @player_1_HP = 100
    @player_2_HP = 100
    erb(:play)
  end

  get '/attack' do
    @player_2_attack = "Player 2 attacked!"
  # session[:player_1_HP] = params[:player_2_name]
    # erb :attack
    erb(:attack)
  end



  #start the server if ruby file executed directly
  run! if app_file == $0
end
