require 'nest.rb'
require 'json'

describe Nest do

  before(:each) do
    @line1 =Nest.create('Mongoose Manor', 'The loveliest, comfiest manor of all', 200.00)
    @line2 =Nest.create('Foliage Flat', 'A beautiful flat full of green', 130.00)


    # @line1 = DatabaseConnection.query("insert into nests (name, description, nightlyrate) values ('Mongoose Manor', 'The loveliest, comfiest manor of all', 200.00) returning id;")
    # @line2 = DatabaseConnection.query("insert into nests (name, description, nightlyrate) values ('Foliage Flat', 'A beautiful flat full of green', 130.00) returning id;")
  end

  it 'returns the name of the nest' do
    expect(Nest.details(@line1)).to have_attributes(description: "The loveliest, comfiest manor of all")
  end

  it 'returns Mongoose Manor for the name key' do
    expect(Nest.details(@line1)).to have_attributes(:name => "Mongoose Manor")
  end

  it 'returns the correct details of a different nest' do
    expect(Nest.details(@line2)).to have_attributes(:name => "Foliage Flat")
  end

  it 'returns a nightly rate' do
    nest_id = @line1
    expect(Nest.details(nest_id)).to have_attributes(nightly_rate: "200.00")
  end

  # it 'translates our Nest object into a JSON object' do
  #   expect(Nest.details_json(@line1[0]['id'])).to include_json(
  #     "name": 'Mongoose Manor',
  #     "description": 'The loveliest, comfiest manor of all',
  #     "nightly_rate": "200.00"
  #
  #   )
  #   # expect(Nest.details_json(@line1[0]['id'])).to include_json()
  # end
  describe 'creation' do
    it 'creates a nest with given parameters' do
      expect(Nest.create("Muddy Hole", "Expensive mud hole", "300.00")).to be_a(Integer)
    end


  end

end
