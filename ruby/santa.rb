class Santa

def initialize(gender, ethnicity)
	puts "Initializing Santa instance"
	@gender = gender
	@ethnicity = ethnicity
	@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	@age = 0
end

def speak
 puts "Ho, ho, ho! Haaaappy holidays!"
end

def eat_milks_and_cookies(flavor)
	"That was a good #{flavor} cookie!"
end

end

=begin
santa = Santa.new("")

p omar.speak

p omar.eat_milk_and_cookies("chocolate chip")
=end

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

santas = []

puts "Creating instances of different (and diverse!) Santas"
example_genders.length.times do |i|
	puts "Adding a Santa with that is #{example_genders[i]} and #{example_ethnicities[i]}"
santas << Santa.new(example_genders[i], example_ethnicities[i])
	puts "There are now #{santas.length} Santas in the array. And here they are:"
	puts santas
	puts "-----"
end

puts "Testing each Santa I added to the array to make sure it can speak!"
santas.each do |santa|
	santa.speak
end