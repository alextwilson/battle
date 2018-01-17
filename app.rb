require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player1 = Player.new(params[:player1])
    $player2 = Player.new(params[:player2])
    redirect '/play'
  end

  get '/play' do
    @player1name = $player1.name
    @player2name = $player2.name
    @player1hp = $player1.hit_points
    @player2hp = $player2.hit_points
    erb :play
  end

  get '/hit' do
    @player1name = $player1.name
    @player2name = $player2.name
    $player1.attack($player2)
    erb :hit
  end
end
