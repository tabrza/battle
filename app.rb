require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base

  enable  :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player1 = Player.new(params[:player_1_name])
    $player2 = Player.new(params[:player_2_name])
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $player1.name
    @player_2_name = $player2.name
    @player_1_HP = $player1.hp
    @player_2_HP = $player2.hp
    @attack_confirmation = session[:attack_confirmation]
    erb(:play)
  end

  post '/attack' do
    $player1.attack($player2)
    session[:attack_confirmation] = "#{$player2.name} Attacked"
    redirect '/play'
  end

  #start the server if ruby file executed directly
  run! if app_file == $0
end
