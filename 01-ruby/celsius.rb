class Celsius

  attr_reader :temperature

  def initialize(temp)
    @temperature = temp
  end

  def to_fahrenheit
    return ( temperature * 1.8 ) + 32
  end

end

temp_c = Celsius.new(20)
temp_c.temperature