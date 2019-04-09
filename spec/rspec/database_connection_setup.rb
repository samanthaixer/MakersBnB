require './lib/database_connection'

if ENV['RACK_ENV'] == 'test'
  DatabaseConnection.setup('rentaburrow_test')
else
  DatabaseConnection.setup('rentaburrow')
end
