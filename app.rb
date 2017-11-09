require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

  enable  :sessions

  get '/' do
    session[:attack_confirmation] = nil
    erb :index
  end

  post '/names' do
    $game = Game.new(Player.new(params[:player_1_name]),Player.new(params[:player_2_name]))
    redirect '/play'
  end

  get '/play' do
    @player_1, @player_2  = $game.player1, $game.player2
    @attack_confirmation = session[:attack_confirmation]
    erb(:play)
  end

  post '/attack' do
    $game.attack($game.player2)
    session[:attack_confirmation] = "#{$game.player2.name} Attacked"
    redirect '/play'
  end

  #start the server if ruby file executed directly
  run! if app_file == $0
end
