require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class Battle < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    player1 = Player.new(params[:player1])
    player2 = Player.new(params[:player2])
    $game = Game.new(player1, player2)
    redirect to ('/play')
  end

  get '/play' do
    @game = $game
    erb(:play)
  end

  post '/attack' do
    @game = $game
    @game.attack
    erb(:attack)
  end

  get '/change_player' do
    @game = $game
    redirect to ('/loss') if @game.gameover?
    @game.change_player
    redirect to ('/play')
  end

  get '/loss' do
    @game = $game
    erb(:loss)
  end
end
