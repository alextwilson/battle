require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class Battle < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/names' do
    player1 = Player.new(params[:player1])
    player2 = Player.new(params[:player2])
    Game.create(player1, player2)
    redirect to ('/play')
  end

  get '/play' do
    erb(:play)
  end

  post '/attack' do
    @game.attack
    erb(:attack)
  end

  get '/change_player' do
    redirect to ('/loss') if @game.gameover?
    @game.change_player
    redirect to ('/play')
  end

  get '/loss' do
    erb(:loss)
  end
end
