#!/usr/bin/env ruby
#1 we need each loop to show the number of bottles - then each reduced by one
#2 we need print bottles of beer on the wall
#3 we need the last line to change to no more bottles of beer
#4 we need for bottles to be bottle in the case of one bottle
#5 we need very last verse to be entirely different when it complete

def pluralize(number_of_bottles)
  if number_of_bottles > 1
    "#{number_of_bottles} bottles"
  elsif number_of_bottles == 1
    "1 bottle"
  else
    "No more bottles"
  end
end

def beer_song(number_of_bottles)
  if number_of_bottles >= 1
    puts "#{pluralize(number_of_bottles)} of beer on the wall, #{pluralize(number_of_bottles)} of beer."
    number_of_bottles = number_of_bottles - 1
    puts "Take one down and pass it around, #{pluralize(number_of_bottles)} of beer on the wall. \n \n"
    beer_song(number_of_bottles)
  else
    puts "#{pluralize(number_of_bottles)} of beer on the wall, #{pluralize(number_of_bottles).downcase} of beer."
    puts "Go to the store and buy some more, 99 bottles of beer on the wall."
  end
end

puts beer_song(99)