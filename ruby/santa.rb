class Santa

def initialize
	puts "Initializing Santa instance"
end

def speak
 "Ho, ho, ho! Haaaappy holidays!"
end

def eat_milk_and_cookies(flavor)
	"That was a good #{flavor} cookie!"
end

end


omar = Santa.new

p omar.speak

p omar.eat_milk_and_cookies("chocolate chip")