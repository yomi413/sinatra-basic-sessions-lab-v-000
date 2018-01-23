require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "birthday"
  end

  get '/' do
    session["item"] 
    @session = session
    erb :index
  end

  post '/checkout' do
    @item = Item.new(params[:item])
    
    erb :checkout
  end

end
