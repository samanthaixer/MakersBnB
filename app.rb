require 'rack'
require 'sinatra'

class AirBnB_App < Sinatra::Base

  get '/' do
    erb :index
  end

end