# Going to create a method called 'alias' that accepts a name as a string of a first and last name
# I want to leave this as a string for now, and iterate through and the designated changes to the string. 
# I'll have to hard code a number of characters. I can think of a way to easily solve the vowel conundrum, but may have to handle a few consonants as one off. 
# Then I want to split the string and create an array, which I'll then reverse
# That should be the name
# As a heads up - I do realize that this is very long. I wanted to just use an enumerable but was encountering major difficulties, upon doing so. Thus, to get this done, I went with a very long while loop (that does work!) but it's clearly not the type of succinct code that I'd like to write. 



def secret_alias(entered_name)
original_name = entered_name.downcase
new_name = ""
vowels = "aeiou"

i = 0
while i < original_name.length
	counter_vowels = 0
   if original_name[i] == " "
   	original_name[i] = " "
    new_name = new_name + original_name[i]
    i += 1
   elsif original_name[i] == "u"
   	new_name = new_name + "a"
    i += 1
   elsif original_name[i] == "a" || original_name[i] == "e" || original_name[i] == "i" || original_name[i] == "o"
   		until original_name[i] == vowels[counter_vowels]
   			counter_vowels += 1
   		end
   		original_name[i] = vowels[counter_vowels+1]
   new_name = new_name + original_name[i]
   i += 1
   	elsif original_name[i] == "z"
    	new_name = new_name + "b"
    i += 1
    elsif original_name[i] == "d"
        new_name = new_name + "f"
    i += 1
    elsif original_name[i] == "h"
      new_name = new_name + "j"
    i += 1
    elsif original_name[i] == "n"
     new_name = new_name + "p"
    i += 1
    elsif original_name[i] == "t"
     new_name = new_name + "v"
    i += 1
    else
    new_name = new_name + original_name[i].next
   i += 1
   end
 end
 holder_name = new_name.split.reverse
 code_name = holder_name.map(&:capitalize).join(' ')
 return code_name
end

# puts secret_alias("Felicia Torres")


puts "Please enter a name(s) you'd like to 'spy-ify'. Type 'quit' when done."
input = gets.chomp.downcase

array = []
while input != "quit"
array << secret_alias(input)
p "Another name? 'quit' if done."
input = gets.chomp
end

p "You've entered these name #{array}"
p "Great thats enough for today!"



