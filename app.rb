require 'pg'
require 'sinatra'
require './lib/nest'
require './spec/rspec/database_connection_setup.rb'

class RentABurrow < Sinatra::Base

  get '/rentaburrow/view' do
    puts Nest.details_json(1);
  end

  get '/' do
    send_file File.join(settings.public_folder, 'index.html')
  end

  post '/rentaburrow/add' do
    id = Nest.create(params['heading'], params['description'], params['nightly_rate']);
  end

end
