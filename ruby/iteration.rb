def take_block
 puts "This is before the block"
 3.times { yield }
 puts "This is after the block"
end

take_block { puts "This is inside the block" }