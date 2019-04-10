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
    nest = { "name" => nest.name, "description" => nest.description, "nightly_rate" => nest.nightly_rate}
  end

  def self.details_json(id)
      results = DatabaseConnection.query("select * from nests where id = #{id};")
      nest = Nest.new(name: results[0]['name'], description: results[0]['description'], nightly_rate: results[0]['nightlyrate'])
      self.translate_to_json(nest)
  end
end
