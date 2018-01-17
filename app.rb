require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/names' do
    @player1name = params[:player1]
    @player2name = params[:player2]
    erb :play
  end

end
