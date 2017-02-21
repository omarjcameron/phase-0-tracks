def take_block
 puts "This is before the block"
 3.times { yield }
 puts "This is after the block"
end

take_block { puts "This is inside the block" }

names = ["OMAR", "BRYAN", "JESS", "MATT"]
hockey = {
	"Crosby" => "Penguins",
	"Ovechkin" => "Capitals",
	"Tavares" => "Islanders"
}

# FOR ARRAY
puts "Original Array:"
p names

names.each do |person|
	puts "This person's name is #{person}."
end

puts "Array After .each Method:"
p names

puts "Original Array:"
p names

names.map! do |person|
	person.downcase
end

puts "Array After .map! Method:"
p names

# FOR HASH
puts "Original Hash:"
p hockey

hockey.each do |player, team|
	puts "#{player} plays for the #{team}."
end

puts "Hash After .each Method:"
p hockey

puts "Original Hash:"
p hockey

new_hockey = hockey.map do |player, team|
	team = "Islanders"
end

puts "Hash After .map Method:"
p new_hockey