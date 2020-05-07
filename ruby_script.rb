#!/usr/bin/ruby
require ('./lib/coin_combo')

puts "Let's break down that coinage. How many cents do you have?"
amount = gets.chomp.to_i
combo = Combo.new(amount)
combo.coin_counter()
  if (combo.quarters == 0)
    puts "That's gonna be: #{combo.dimes} dimes, #{combo.nickels} nickels, and #{combo.amount} pennies."
  elsif (combo.dimes == 0)
    puts "That's gonna be: #{combo.quarters} quarters, #{combo.nickels} nickels, and #{combo.amount} pennies."
  elsif (combo.nickels == 0)
    puts "That's gonna be: #{combo.quarters} quarters, #{combo.dimes} dimes, and #{combo.amount} pennies."
  elsif (combo.amount == 0)
    puts "That's gonna be: #{combo.quarters} quarters, #{combo.dimes} dimes, and #{combo.nickels} nickels."
  else
    puts "That's gonna be: #{combo.quarters} quarters, #{combo.dimes} dimes, #{combo.nickels} nickels, and #{combo.amount} pennies."
  end 