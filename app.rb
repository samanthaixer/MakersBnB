require 'pg'
require 'sinatra'
require './lib/nest'
require './spec/rspec/database_connection_setup.rb'

class RentABurrow < Sinatra::Base

  get '/rentaburrow/view' do
     # return '[{"id":0,"name":"Bart"},{"id":1,"name":"Lauren"},{"id":2,"name":"Henry"},{"id":3,"name":"Sam"}]'
    Nest.details_json(1);
    # p Nest.all
  end

  get '/' do
    send_file File.join(settings.public_folder, 'index.html')
  end

  post '/rentaburrow/add' do
    id = Nest.create(params['heading'], params['description'], params['nightly_rate']);
    return id
  end
end


