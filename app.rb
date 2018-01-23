require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "birthday"
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    # binding.pry
    @item = Item.new(params[:item])
    session["item"] = "#{@item}"
    @session = session

    erb :checkout
  end

end
