require 'pg'
require 'sinatra'
require './lib/nest'
require './spec/rspec/database_connection_setup.rb'

class RentABurrow < Sinatra::Base

  get '/rentaburrow' do
    puts Nest.details_json(1);
  end

  # get '/' do
  #   send_file File.join(settings.public_folder, 'index.html')
  # end

end
