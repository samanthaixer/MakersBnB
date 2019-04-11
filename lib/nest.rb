require 'json'
require_relative './database_connection.rb'

class Nest

  attr_reader :name, :description, :nightly_rate

  def initialize(name:, description:, nightly_rate: )
    @name = name
    @description = description
    @nightly_rate = nightly_rate
  end

  def self.details(id)
      results = DatabaseConnection.query("select * from nests where id = #{id};")
      Nest.new(name: results[0]['name'], description: results[0]['description'], nightly_rate: results[0]['nightlyrate'])
  end

  def self.translate_to_json(nest)
     name = '[{"name":"'
     description = '", "description":"'
     nightly_rate = '", "nightly_rate":"'
     last = '"}]'
     jsonNest = name + nest.name + description + nest.description + nightly_rate + nest.nightly_rate + last
   end

  def self.details_json(id)
      results = DatabaseConnection.query("select * from nests where id = #{id};")
      nest = Nest.new(name: results[0]['name'], description: results[0]['description'], nightly_rate: results[0]['nightlyrate'])
      self.translate_to_json(nest)
  end

  def self.create(name, description, nightly_rate)
    results = DatabaseConnection.query("insert into nests (name, description, nightlyrate) values ('#{name}', '#{description}', #{nightly_rate}) returning id;")
    id = results[0]['id'].to_i
    return id
  end

  def self.all
    results = DatabaseConnection.query("select * from nests;")
    nests = results.map { |nest| Nest.new(name: nest['name'],description: nest['description'],nightly_rate: nest['nightlyrate'])}
    self.json_all(nests)
  end

  def self.json(nest)
    {'name' => nest.name, 'description' => nest.description, 'nightly_rate' => nest.nightly_rate}.to_json
  end

  def self.json_all(all_nests)
    nests = []
    all_nests.each do |nest|
    nests.push(json(nest))
    end
    return nests
  end

end