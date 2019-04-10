require 'rack'
require 'sinatra'

class AirBnB_App < Sinatra::Base

  get '/' do
    send_file File.join(settings.public_folder, 'index.html')
  end
  
end