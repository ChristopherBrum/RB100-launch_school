# Write a program that asks the user to type something in, after which 
# your program should simply display what was entered.

# puts ">> Go ahead and write anything you'd like:"
# input = gets.chomp
# puts input


###############################
# Write a program that asks the user for their age in years, and then 
# converts that age to months.
# def age_in_months(years)
#   months = years * 12
#   puts "You're #{months} months old!"
# end

# def age_in_years()
#   puts "How old are you? "
#   age = gets.chomp.to_i
# end

# age_in_months(age_in_years)


###############################
# Write a program that asks the user whether they want the program to print 
# "something", then print it if the user enters y. Otherwise, print nothing.
# loop do
#   puts ">> Do you want me to print something? (y/n)"
#   input = gets.chomp.downcase

#   if input == 'y'
#     puts "something"
#     break
#   elsif input == 'n'
#     break
#   else  
#     puts ">> Invalid input! Please enter y or n"
#   end
# end

# # another way of doing this...
# input = nil
# loop do
#   puts ">> Do you want me to print something? (y/n)"
#   input = gets.chomp.downcase
#   break if %w(y n).include?(input)
#   puts ">> Invalid input! Please enter y or n"
# end
# puts 'something' if input == 'y'


###############################
# number = nil
# loop do
#   puts ">> How many output lines do you want? Enter a number >= 3:"
#   number = gets.chomp.to_i
#   break if number.is_a?(Integer) && number >= 3
#   puts ">> That's not enough lines."
# end
# number.times { puts "Launch School is the best!" }


###############################
# USER_NAME = 'some_person@hotmail.com'
# PASSWORD = 'BadPassword123'
# loop do 
#   puts ">> Please enter your user name:"
#   user_name = gets.chomp
#   puts ">> Please enter your password:"
#   p_word = gets.chomp
#   break if p_word == PASSWORD && user_name == USER_NAME
#   puts ">> Authorization failed!"
# end
# puts "Welcome!"

# def valid_number?(number_string)
#   number_string.to_i.to_s == number_string
# end

# loop do
#   puts ">> Please enter the numerator:"
#   num_1 = gets.chomp
#   puts ">> Please enter the denominator:"
#   num_2 = gets.chomp

#   if !valid_number?(num_1) || !valid_number?(num_2) || num_2.to_i == 0
#     puts ">> Invalid input. Only integers are allowed."
#   else
#     puts ">> #{num_1} / #{num_2} is #{num_1.to_i / num_2.to_i}"
#     break
#   end
# end


###############################
# input = nil
# loop do
#   puts ">> How many output lines do you want? Enter a number >= 3 (Q to quit):"
#   raw_input = gets.chomp
#   input = raw_input.to_i
  
#   break if raw_input.downcase == 'q'
  
#   if input < 3
#     puts ">> That's not enough lines."
#   else
#     input.times { puts "Launch School is the best!" }
#   end
# end


###############################
# def valid_number?(number_string)
#   number_string.to_i.to_s == number_string && number_string.to_i != 0
# end

# def pos_and_neg?(number_1, number_2)
#   (number_1 < 0 && number_2 > 0) || (number_1 > 0 && number_2 < 0)
# end

# num_1 = nil
# num_2 = nil

# loop do
#   puts ">> Please enter a positive or negative integer:"
#   num_1 = gets.chomp
#   puts ">> Please enter another positive or negative integer:"
#   num_2 = gets.chomp

#   if !valid_number?(num_1) || !valid_number?(num_2) 
#     puts ">> Invalid input. Only non-zero integers are allowed."
#   elsif !pos_and_neg?(num_1.to_i, num_2.to_i)
#     puts ">> Sorry. One integer must be positive, one must be negative."
#     puts ">> Please start over."
#   else
#     break
#   end
# end

# result = num_1.to_i + num_2.to_i
# puts "#{num_1} + #{num_2} = #{result}"


###############################
# def print_me 
# puts "I'm printing within the method!"
# end

# print_me


###############################
# def print_me 
#   "I'm printing within the method!"
# end

# puts print_me


###############################
# def say_hello
#   "Hello"
# end

# def say_world
#   "world!"
# end

#puts say_hello + ' ' + say_world


###############################
# def hello
#   'Hello'
# end

# def world
#   'World'
# end

# def greet
#   hello + " " + world
# end

# puts greet


###############################
# def car(make, model)
#   puts make + " " + model
# end

# car("Ford", "Escort")


###############################
# daylight = [true, false].sample

# def time_of_day(boolean)
#   puts boolean ? "It's daytime!" : "It's nighttime!"
# end

# time_of_day(daylight)


###############################
# def dog(name)
#   return name
# end

# def cat(name)
#   return name
# end

# puts "The dog's name is #{dog('Spot')}."
# puts "The cat's name is #{cat('Ginger')}."


###############################
# def assign_name(name='Bob')
#   name
# end

# puts assign_name('Kevin') == 'Kevin'
# puts assign_name == 'Bob'


###############################
# def add(num_1, num_2)
#   num_1 + num_2
# end

# def multiply(num_1, num_2)
#   num_1 * num_2
# end

# puts add(2, 2) == 4
# puts add(5, 4) == 9
# puts multiply(add(2, 2), add(5, 4)) == 36


###############################
# names = ['Dave', 'Sally', 'George', 'Jessica']
# activities = ['walking', 'running', 'cycling']

# def name(arr)
#   arr.sample
# end

# def activity(arr)
#   arr.sample
# end

# def sentence(name_, activity_)
#   "#{name_} went #{activity_} today!"
# end

# puts sentence(name(names), activity(activities))


###############################
# sun = ['visible', 'hidden'].sample

# puts "The sun is so bright!" if sun == 'visible'
# puts "The clouds are blocking the sun!" unless sun == 'visible'


###############################
# boolean = [true, false].sample

# boolean ? puts("I'm true!") : puts("I'm false!")


# ###############################
# number = 7

# if number
#   puts "My favorite number is #{number}."
# else
#   puts "I don't have a favorite number."
# end


###############################
# stoplight = ['green', 'yellow', 'red'].sample

# case stoplight
# when "green"
#   puts "Go!"
# when "yellow"
#   puts "Slowdown!"
# when "red"
#   puts "Stop!"
# end


###############################
# stoplight = ['green', 'yellow', 'red'].sample

# if stoplight == 'green'
#   puts 'Go!'
# elsif stoplight == 'yellow'
#   puts 'Slow down!'
# else
#   puts 'Stop!'
# end


###############################
# status = ['awake', 'tired'].sample
# energy_level = ''

# energy_level =  if status == 'awake'
#                   "Be productive!"
#                 else
#                   "Go to sleep!"
#                 end

# puts energy_level


###############################
# stoplight = ['green', 'yellow', 'red'].sample

# case stoplight
# when 'green' then puts 'Go!' 
# when 'yellow' then puts 'Slow down!'
# else puts 'Stop!'
# end


###############################
# colors = 'blue pink yellow orange boredom'

# def includes_color?(clr, string)
#   string.split(/ /).include?(clr)
# end

# puts includes_color?('yellow', colors)
# puts includes_color?('purple', colors)
# puts includes_color?('red', colors)


###############################
# pets = ['cat', 'dog', 'fish', 'lizard']
# my_pets = pets.filter { |pet| pet == 'fish' || pet == 'lizard' }
# puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}!"


###############################
# pets = ['cat', 'dog', 'fish', 'lizard']
# my_pets = pets[2..3]
# my_pets.pop
# my_pets.push(pets.delete('dog'))
# puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}!"


###############################
# orig_arr = ['Dave', 7, 'Miranda', 3, 'Jason', 11]
# str_arr = orig_arr.filter { |element| element.is_a? String }
# num_arr = orig_arr.filter { |element| element.is_a? Integer }
# combined_arr = []
# counter = 0
# str_arr.length.times do 
#   combined_arr.push([].push(str_arr[counter], num_arr[counter]))
#   counter += 1
# end

# p combined_arr


###############################
# Financially, you started the year with a clean slate.

# balance = 0

# Here's what you earned and spent during the first three months.

# january = {
#   income: [ 1200, 75 ],
#   expenses: [ 650, 140, 33.2, 100, 26.9, 78 ]
# }

# february = {
#   income: [ 1200 ],
#   expenses: [ 650, 140, 320, 46.7, 122.5 ]
# }

# march = {
#   income: [ 1200, 10, 75 ],
#   expenses: [ 650, 140, 350, 12, 59.9, 2.5 ]
# }

# # Let's see how much you've got now...

# def calculate_balance(month)
#   plus  = month[:income].sum
#   minus = month[:expenses].sum

#   plus - minus
# end

# [january, february, march].each do |month|
#   balance += calculate_balance(month)
# end

# puts balance


###############################
# Each player starts with the same basic stats.

player = { strength: 10, dexterity: 10, charisma: 10, stamina: 10 }

# Then the player picks a character class and gets an upgrade accordingly.

character_classes = {
  warrior: { strength:  20 },
  thief:   { dexterity: 20 },
  scout:   { stamina:   20 },
  mage:    { charisma:  20 }
}

puts 'Please type your class (warrior, thief, scout, mage):'
input = gets.chomp.downcase

player.merge!(character_classes[input.to_sym])

puts 'Your character stats:'
puts player