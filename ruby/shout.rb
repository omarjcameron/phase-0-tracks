module Shout
	# we'll put some methods here soon, but this code is fine for now!
	def self.yell_angrily(words)
		words + "!!!" + " :("
	end

	def self.yelling_happy(words)
		words + "!!!" + " Oh Yea! :) "
	end
end

p Shout.yell_angrily("cheese")
p Shout.yelling_happy("cheese")