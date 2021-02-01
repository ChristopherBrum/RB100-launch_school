# LOOPS 1

#1
loop do
  puts 'Just keep printing...'
  break
end

#2
loop do
  puts 'This is the outer loop.'

  loop do
    puts 'This is the inner loop.'
    break
  end
  break
end

puts 'This is outside all loops.'

#3
iterations = 1

loop do
  puts "Number of iterations = #{iterations}"
  break if iterations >= 5
  iterations += 1
end

#4 
# loop do
#   puts 'Should I stop looping?'
#   answer = gets.chomp
#   break if answer == 'yes'
#   puts 'Answer yes if you\' like this to end'
# end

#5
say_hello = true
incrementer = 1

while say_hello
  puts 'Hello!'
  say_hello = false if incrementer == 5
  incrementer += 1
end

#6 
numbers = []
while numbers.length < 5
  numbers << rand(100)
end

puts numbers

#7
count = 0

until count == 10
  count += 1
  puts count
end

#8
numbers = [7, 9, 13, 25, 18]
until numbers.length == 0
  puts numbers[0]
  numbers.shift
end

#9
for i in 1..100
  puts i if i % 2 != 0
end

#10
friends = ['Sarah', 'John', 'Hannah', 'Dave']

friends.each { |friend| puts "Hello, #{friend}!" }

# Loops 2

# Modify the following code so that the loop stops if number is equal 
# to or between 0 and 10.
loop do 
  number = rand(100)
  if number.between?(0, 10)
    puts "#{number} is between 0 and 10."
    break
  else
    puts number 
  end
end

# Using an if/else statement, run a loop that prints "The loop was processed!" 
# one time if process_the_loop equals true. Print "The loop wasn't processed!" 
# if process_the_loop equals false.
process_the_loop = [true, false].sample

if process_the_loop
  loop do 
    puts "The loop was processed!"
    break
  end
else 
  puts "The loop wasn't processed!"
end

# The code below asks the user "What does 2 + 2 equal?" and uses #gets to 
# retrieve the user's answer. Modify the code so "That's correct!" is printed 
# and the loop stops when the user's answer equals 4. Print "Wrong answer. 
# Try again!" if the user's answer doesn't equal 4.
loop do
  puts 'What does 2 + 2 equal?'
  answer = gets.chomp.to_i
  if answer == 4
    puts "That's correct!"
    break
  else
    puts "Wrong answer.Try again!"
  end 
end

# Modify the code below so that the user's input gets added to the numbers 
# array. Stop the loop when the array contains 5 numbers.
numbers = []

loop do
  puts 'Enter any number:'
  input = gets.chomp.to_i
  numbers.push(input)
  break if numbers.length == 5
end
puts numbers.to_s

# Given the array below, use loop to remove and print each name. 
# Stop the loop once names doesn't contain any more elements.
names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do 
  puts names.shift
  break if names.length == 0
end

# The method below counts from 0 to 4. Modify the block so that it prints 
# the current number and stops iterating when the current number equals 2.
5.times do |index|
  puts index
  break if index == 2
end
puts

# Using next, modify the code below so that it only prints even numbers.
number = 0

until number == 10
  number += 2
  puts number
end

# The following code increments number_a and number_b by either 0 or 1. 
# loop is used so that the variables can be incremented more than once, 
# however, break stops the loop after the first iteration. Use next to modify 
# the code so that the loop iterates until either number_a or number_b equals 5.
# Print "5 was reached!" before breaking out of the loop.
number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)
  next unless number_a != 5 || number_b != 5
    
  puts "5 was reached!"
  break
end

# Given the code below, use a while loop to print "Hello!" twice.
def greeting(times)
  while times > 0 
    puts 'Hello!'
    times -= 1
  end
end

number_of_greetings = 2
greeting(number_of_greetings)
