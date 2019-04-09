
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
end
