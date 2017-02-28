class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(n)
n.times {puts "Woff"}
  end

  def roll_over
  	"*rolls over*"
  end

  def dog_years(n)
   dog_year = n / 7
  end

  def sit
  	"*sits down*"
  end

  def initialize
   p "Initialzing new puppy instance ..."
  end
end


sparky = Puppy.new

p sparky.fetch("ball")

p sparky.speak(5)
  
p sparky.roll_over

p sparky.dog_years(49)

p sparky.sit