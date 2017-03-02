module Shout
	# we'll put some methods here soon, but this code is fine for now!
	def yell_angrily(words)
		words + "!!!" + " :("
	end

	def yelling_happy(words)
		words + "!!!" + " Oh Yea! :) "
	end
end

=begin
p Shout.yell_angrily("cheese")
p Shout.yelling_happy("cheese")
=end

class The_Isley_Brothers
	include Shout
end


class Coach
	include Shout
end


wedding_goers = The_Isley_Brothers.new
p wedding_goers.yelling_happy("You know you make me wanna SHOUT")

coach_k = Coach.new
p coach_k.yell_angrily("Play Defense")