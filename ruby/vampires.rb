def inquisition

puts "What is your name?"
name = gets.chomp

puts "How old will you be on your birthday in 2017?"
age = gets.chomp.to_i

puts"What year were you born?"
birth_year = gets.chomp.to_i

present_year = 2017
age_validation = (present_year - birth_year)
if age == age_validation
	age = true
else
	age = false
end

puts "Our company cafeteria serves garlic bread. Should we order some for you? Please answer \"yes\" or \"no\""
garlic_bread = gets.chomp

if garlic_bread == "yes"
	garlic_bread = true
else
	garlic_bread = false
end

puts "Would you like to enroll in the company’s health insurance? Please answer \"yes\" or \"no\""
health_insurance = gets.chomp

if health_insurance == "yes"
	health_insurance = true
else
	health_insurance = false
end


if age && (health_insurance || garlic_bread)
	puts "Probably Not a Vampire"
elsif !age && (!garlic_bread || !health_insurance)
	puts "Probably a Vampire"
elsif !age && !garlic_bread && !health_insurance
	puts "Almost Certainly a Vampire"
elsif (name == "Drake Cula" || name == "Tu Fang")
	puts "Definitely a Vampire"
else
	puts "Results inconclusive"
end

puts "We'd also like to know if you have any allergies. Can you list them?"
allergy = gets.downcase.chomp

	while allergy != "sunshine"
		puts "Keep listing any known allegeries!"
		allergy = gets.downcase.chomp
	end
end

puts "How many employees are you registering?"
employee_num = gets.chomp.to_i

i = 0 
until i == employee_num
	inquisition
i += 1
end


puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."