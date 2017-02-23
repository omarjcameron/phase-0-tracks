# In order to get the data to populate our hash values, we'll need to get user input. Before we start printing questions to the screen, let's list out the pieces of data we want to collect
# We'll start by simply deciding what information we'd like to collect. Let's include the information included in the prompt: 1) the client's name, age, number of children, decor theme, and then a few more - type of residence, pet owner?, favorite music genre, favorite travel destination. These pieces will serve as our keys.
# Then we can create an empty hash named client_form - to name our form. We don't need to initialize it just yet, as we can do this incrementally. 
# To the reader - STOP. Originally, I thought to create variables for user input and then, in a new line, input these variables to my hash using the symbols. You can see my work on that below the first program. While that way of doing things defintiely works - I had the 'aha' moment when I realized you can do it in one line, and that is the indicated in the first program. 
# We'll start printing questions to prompt the client for data. In short, we'll make it so user input is equal to the value of each key. 
# Lastly, we'll print our hash, replete with the data!

client_intake = {}


puts "Please enter the client's name"
client_intake[:name] = gets.chomp

puts "Please enter the client's age"
client_intake[:age] = gets.chomp.to_i

puts "How many children does the client have?"
client_intake[:number_of_kids] = gets.chomp.to_i

puts "What has the client selected as a decor theme?"
client_intake[:decor_theme] = gets.chomp

puts "What type of residence does the client reside in?"
client_intake[:residence_type] = gets.chomp

puts "Does the client have pets? (True/False)"
client_intake[:pets] = gets.chomp

puts "What type of music does the client like?"
client_intake[:fave_music] = gets.chomp

puts "What is the clients favorite travel destination?"
client_intake[:fave_destination] = gets.chomp

# Provide an initial print of the client intake form by printing the hash to the screen

p "Great here are your results!"
p client_intake

puts "Is there anything you'd like to change/update?"
response = gets.chomp

if response == "none"
	p "Great! You're all set!"
	p client_intake
else
	p "Ah yes, mistakes happen! Please enter your new answer!"
	answer = gets.chomp
	client_intake[response.to_sym] = answer
	p client_intake
end

# Here is the aformentioned (longer) version of that program! Thank goodness for aha moments!

client_form = {}


puts "Please enter the client's name"
client_name = gets.chomp
client_form [:name] = client_name

puts "Please enter the client's age"
client_age = gets.chomp.to_i
client_form[:age] = client_age

puts "How many children does the client have?"
children_number = gets.chomp.to_i
client_form[:number_of_kids] = children_number

puts "What has the client selected as a decor theme?"
theme_type = gets.chomp
client_form[:decor_theme] = theme_type

puts "What type of residence does the client reside in?"
home_type = gets.chomp
client_form[:residence_type] = home_type

puts "Does the client have pets? (True/False)"
has_pets = gets.chomp
client_form[:pets] = has_pets

puts "What type of music does the client like?"
music_choice = gets.chomp
client_form[:fave_music] = music_choice

puts "What is the clients favorite travel destination?"
destination_choice = gets.chomp
client_form[:fave_destination] = destination_choice

# Provide an initial print of the client intake form by printing the hash to the screen
p client_form

puts "Is there anything you'd like to change/update?"
update_key = gets.chomp

if update_key == "none"
	p "Great! You're all set!"
	p client_form
else
	p "Ah yes, mistakes happen! Please enter your new answer!"
	new_value = gets.chomp
	client_form[update_key.to_sym] = new_value
	p client_form
end