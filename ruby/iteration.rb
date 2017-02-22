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



foods = ["Pizza", "Steak", "Veggies", "Tacos", "Fruits"]
drinks = { "Beer" => 7, "Wine"  => 10, "Liquor" => 40}

puts "Original Array"
p foods

p foods.delete_if {|type_of_food| type_of_food.length > 5}

p foods.keep_if {|type_of_food| type_of_food == "Pizza"}

p foods.select {|type_of_food| type_of_food == "Steak"}

p foods.drop_while {|type_of_food| type_of_food.length <= 5}


puts "Original Hash"
p drinks

p drinks.delete_if {|types, percentage| types == "Wine"}

p drinks.keep_if {|types, percentage| types.length > 4}

p drinks.select {|types, percentage| types == "Liquor"}

p drinks.drop_while {|types, percentage| types.length <= 5}