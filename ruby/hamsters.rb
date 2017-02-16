puts ("What's the name of the hamster?")
 hamster_name = gets.chomp

 puts ("On a scale of 1 to 10, ten being the loudest, how noisy is the hamster?")
 noise_level = gets.chomp.to_i

 puts ("What color of fur does the hamster have?")
 fur_color = gets.chomp

 puts ("Is the hamster adoptable?")
 adoption = gets.chomp

  
 puts ("Enter the estimated age of the hamster")
 	age = gets.chomp.to_i
 	if age == nil 
 	age_of_hamster = nil 

 	else 
 	age_of_hamster = age 
 	end

 print ("You have entered #{hamster_name}. Noise level is #{noise_level}. The hamster's fur color is #{fur_color}. Is the hamster adoptable? #{adoption}. The hamster's age (if applicable) #{age_of_hamster}.")
