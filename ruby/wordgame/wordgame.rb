#First we want to create a class 
# We are going to want to provide an initalize method that should have some instance variables
# Instance variables should include = whether the game is over, if a character has been checked, the guess count, the word itself

=begin
We should have a method that checks to seee if the guess is right
It should increment the guess by += 1 as long as the guess is unique
if the letter guessed is included in the array, then we want to print the correctly guess letter in its position in the array. 

If the letter is not guessed correctly then the user should see a message saying that that letter is not present, try again. 

If they get all letters, print a congratulatory message, print a taunting message otherwise.
=end

class WordGame

	attr_reader
	attr_accessor :guess_count, :is_over, :is_guessed, :letter

  def initialize(string)
    @word = string.chars
  	@guess_count = 0
    @is_over = false
    @is_guessed = false
    @letter = nil
  end

  def check_word(string)
  	@guess_count += 1
    if @word.include? string
    position_in_array = @word.index(string)
    puts ""
    else 
    	= @word.index(input)
  end


  def already_guessed?

 end

end


game = WordGame.new("camp")
p game


# I am really stumped on this one. I'm still working on it though! 
