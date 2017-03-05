class Santa
  attr_reader :age, :ethnicity
  attr_accessor :gender


  def initialize(gender, ethnicity)
	puts "Initializing Santa intance..."
	puts @gender = gender
	puts @ethnicity = ethnicity
	@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	puts @age = rand(0..140)
  end

  def about
	puts @gender
	puts @ethnicity
	puts @age
  end

#getter methods

  def celebrate_birthday
	@age += 1
  end

  def get_mad_at(new_ranking)
	position = @reindeer_ranking.rindex(new_ranking)
	@reindeer_ranking.insert(-1, @reindeer_ranking.delete_at(position))
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(flavor)
	"That was a good #{flavor} cookie!"
  end

end



example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

santas = []

puts "Creating instances of different (and diverse!) Santas"
example_genders.length.times do |i|
	puts "Adding a Santa with that is #{example_genders[i]} and #{example_ethnicities[i]}"
        santas << Santa.new(example_genders[i], example_ethnicities[i])
	puts "There are now #{santas.length} Santas in the array."
	puts "-----"
end

puts "Testing each Santa I added to the array to make sure it can speak!"
santas.each do |santa|
	santa.speak
end

omar = Santa.new(example_genders[0], example_ethnicities[2])
p omar.about

p santas


#
# Run a times method that creates some number of santas 
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

  rand(100).times do |i|
    Santa.new(example_genders.sample, example_ethnicities.sample)
    puts "------"
  end

=begin
omar = Santa.new("male", "black")


p omar.speak

# p omar.eat_milk_and_cookies("chocolate chip")

p omar.age
p omar.celebrate_birthday
p omar.age
p omar.get_mad_at("Dasher")
p omar.about
  omar.gender = "female"
p omar.about
=end
