#!/usr/bin/env ruby

numbers = (1..100).to_a

fizz_buzz_array = numbers.map do |num|
  if num % 3 == 0 && num % 5 == 0
    "FizzBuzz"
  elsif num % 5 == 0
    "Buzz"
  elsif num % 3 == 0
    "Fizz"
  else
    num
  end
end

puts fizz_buzz_array