
require 'nest.rb'

describe Nest do

  before(:each) do
    @result = DatabaseConnection.query("insert into nests (name, description, nightlyrate) values ('Mongoose Manor', 'The loveliest, comfiest manor of all', 200.00) returning id;")
    @result2 = DatabaseConnection.query("insert into nests (name, description, nightlyrate) values ('Foliage Flat', 'A beautiful flat full of green', 130.00) returning id;")
  end

  it 'returns the name of the nest' do
    expect(Nest.details(@result[0]['id'])).to have_attributes(description: "The loveliest, comfiest manor of all")
  end

  it 'returns Mongoose Manor for the name key' do
    expect(Nest.details(@result[0]['id'])).to have_attributes(:name => "Mongoose Manor")
  end

  it 'returns the correct details of a different nest' do
    expect(Nest.details(@result2[0]['id'])).to have_attributes(:name => "Foliage Flat")
  end

  it 'returns a nightly rate' do
    expect(Nest.details(@result[0]['id'])).to have_attributes(nightly_rate: "200.00")
  end
end
