class Superhero
  #constructor
  def initialize(superhero_name)
    @superhero_name = superhero_name
  end

  def say_cool_speech
    return "My name is #{@superhero_name}, and I'm here to defeat evil!"
  end
end

ms_marvel = Superhero.new("Ms. Marvel")
batman = Superhero.new("Batman")
sailor_moon = Superhero.new("Sailor Moon")

ms_marvels_catchphrase = ms_marvel.say_cool_speech
batmans_catchphrase = batman.say_cool_speech
sailor_moons_catchphrase = sailor_moon.say_cool_speech

puts ms_marvels_catchphrase
puts batmans_catchphrase
puts sailor_moons_catchphrase