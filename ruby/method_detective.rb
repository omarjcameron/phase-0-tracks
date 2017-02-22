# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

"iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”
p "ChEeSe".swapcase

 "zom".insert(2,'o')
# => “zoom”
p "zom".insert(2,'o')

"enhance".center(15)
# => "    enhance    "
p "enhance".center(15)


"Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"
p "Stop! You’re under arrest!".upcase

"the usual".insert(-1, " suspects")
"the usual" << " suspects"
#=> "the usual suspects"
p "the usual".insert(-1, " suspects")
p "the usual" << " supspects"

" suspects".insert(0, "the usual")
# => "the usual suspects"
p " suspects".insert(0, "the usual")


"The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"
p "The case of the disappearing last letter".chop

first_missing_letter = "The mystery of the missing first letter"
# => "he mystery of the missing first letter"
first_missing_letter.slice!(0)
p first_missing_letter

p "Elementary,    my   dear        Watson!".squeeze
# => "Elementary, my dear Watson!"
p "Elementary,    my   dear        Watson!".squeeze

p "z".ord
# => 122 
# (What is the significance of the number 122 in relation to the character z?)
# 122 is the number for lowercase 'z' in the ASCII CODE index.
p "z".ord

p "How many times does the letter 'a' appear in this string?".count("a")
# => 4
p "How many times does the letter 'a' appear in this string?".count("a")