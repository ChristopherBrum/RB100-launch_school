def number_value(num)
  if num <= 50 && num >= 0
    "The number is between 0 and 50"
  elsif num <= 100 && num >= 51
    "The number is between 51 and 100"
  else
    puts "This number is not within range. \nTry putting a number between 1 and 100."
    num = gets.chomp.to_i
    
    print number_value(num)
  end
end

puts "Enter a number between 1 and 100."
number = gets.chomp.to_i

puts number_value(number)