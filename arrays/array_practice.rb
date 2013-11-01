#!/usr/bin/env ruby

numbers = (1..10).to_a

puts "#{numbers.join('...')}..."
puts "T-#{numbers.reverse.join(', ')}... BLASTOFF!"
puts "The last element is #{numbers.last}"
puts "The first element is #{numbers.first}"
puts "The third element is #{numbers[2]}"
puts "The element with an index of #{numbers[2]} is #{numbers[3]}"
puts "The second from last element is #{numbers[8]}"
puts "The first four elements are '#{numbers[0...4].join(', ')}'"

numbers.delete(5)
numbers.delete(6)
numbers.delete(7)

puts "If we delete 5, 6, and 7 from the numbers, we're left with [#{numbers.join(',')}]"
puts "If we add 5 at the beginning of the numbers, we're left with [#{numbers.unshift(5).join(',')}]"
puts "If we add 6 at the end of the numbers, we're left with [#{numbers.push(6).join(',')}]"
puts "Only the elements #{numbers[6, 2]} are > 8."

numbers.delete_if {|n| n < 11}
puts "If we remove all the elements, then the length of the numbers is #{numbers.length}"