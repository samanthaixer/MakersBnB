require 'pg'

def setup_test_database
  DatabaseConnection.query("TRUNCATE nests;")
end 
