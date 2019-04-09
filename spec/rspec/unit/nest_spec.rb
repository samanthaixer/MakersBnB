
require 'nest.rb'

describe Nest do
  let(:subject) { Nest.new(name: "Mongoose Manor", description: "The loveliest comfiest manor of all", nightly_rate: "200.00") }

  it 'returns the name of the nest' do
    expect(subject.details).to include(description: "The loveliest comfiest manor of all")
  end

  it 'returns Mongoose Manor for the name key' do
    expect(subject.details).to include(:name => "Mongoose Manor")
  end

  it 'returns the correct details of a different nest' do
    nest1 = Nest.new(name: "foliage flat", description: "A beautiful flat full of green", nightly_rate: "130.00")
    expect(nest1.details).to include(:name => "foliage flat")
  end

  it 'returns a nightly rate' do
    expect(subject.details).to include(nightly_rate: "200.00")
  end
end
