
class Nest
  def initialize(name:, description:, nightly_rate: )
    @name = name
    @description = description
    @nightly_rate = nightly_rate
  end

  def details
    {name: @name, description: @description, nightly_rate: @nightly_rate}
  end
end
