#1 Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

puts "#1 one-liner"
arr.each { |num| puts num }

puts "#1 multi-liner"
arr.each do |num|
  puts num
end

#2 Same as above, but only print out values greater than 5.
puts "#2 one-liner"
arr.each { |num| puts num if num > 5 }

puts "#2 multi-liner"
arr.each do |num| 
  if num > 5
    puts num
  end
end

#3 Now, using the same array from #2, use the select method to extract all odd numbers into a new array.
puts "#3 one-liner"
odd_arr = arr.select { |num| num % 2 != 0 }
puts odd_arr

puts "#3 multi-liner"
odd_arr_multi = []
arr.select do |num| 
  if num % 2 != 0 
    odd_arr_multi.push(num)
  end
end
puts odd_arr_multi

#4 Append 11 to the end of the original array. Prepend 0 to the beginning.
puts
puts "#4 answer"
arr.push(11)
arr.unshift(0)
puts arr

#5 Get rid of 11. And append a 3.
puts
puts "#5 answer"
arr.pop
arr.push(3)
puts arr

#6 Get rid of duplicates without specifically removing any one value.
puts
puts "#6 answer"
arr = arr.uniq #OR arr.uniq!
puts arr

#7 What's the major difference between an Array and a Hash?

# An array is an ordered list and a has is a collection of key-value pairs.
# You extract elements of an array by their index and you extract values from a has by their key.

#8 Create a Hash, with one key-value pair, using both Ruby syntax styles.
hash = { name: "chris" }
other_hash = { :name => "steve" }

#9  1. Get the value of key `:b`.
#   2. Add to this hash the key:value pair `{e:5}`
#   3. Remove all key:value pairs whose value is less than 3.5
h = {a:1, b:2, c:3, d:4}
puts
puts "#9 answers"
print "1. " 
puts h[:b]

h[:e] = 5
print "2. "
puts h

print "3. "
h.delete_if { |k, v| v < 3.5}
# multi line version
h.delete_if do |k, v|
  v < 3.5
end
puts
puts h.to_s

#10 Can hash values be arrays? Can you have an array of hashes? (give examples)
hsh_arrays = {
  a: [1, 2, 3],
  b: [4, 5, 6],
  c: [7, 8, 9]
}

arr_hashes = [ {a: 1}, {b: 2}, {c: 3}]
puts
puts "#10 answers"
puts hsh_arrays
puts arr_hashes.to_s

#11 Given the following data structures. Write a program that copies the 
# information from the array into the empty hash that applies to the correct person.
contact_data = [
  ["joe@email.com", "123 Main st.", "555-123-4567"],
  ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]
]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contact_data.each_with_index do |info, index| 
  if index == 0
    contact = contacts["Joe Smith"]
  elsif index == 1
    contact = contacts["Sally Johnson"]
  end

  contact[:email] = info[0]
  contact[:address] = info[1]
  contact[:phone] = info[2]
end
puts
puts "#11 answers"
puts contacts

#12 Using the hash you created from the previous exercise, 
# demonstrate how you would access Joe's email and Sally's phone number?
puts
puts "#12 answers"
puts contacts["Joe Smith"][:email]
puts contacts["Sally Johnson"][:phone]

#13 Use Ruby's Array method delete_if and String method start_with? to 
# delete all of the words that begin with an "s" in the following array.
arr5 = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
puts
puts "#13 answers"
arr5.delete_if { |word| word.start_with?('s') }
puts arr5.to_s
arr5.delete_if { |word| word.start_with?('s', 'w') }
puts arr5.to_s

#14 Turn it into a new array that consists of strings containing one word. 
# (ex. ["white snow", etc...] → ["white", "snow", etc...]. Look into using 
# Array's map and flatten methods, as well as String's split method.
a = ['white snow', 'winter wonderland', 'melting ice',
  'slippery sidewalk', 'salted roads', 'white trees']
puts
puts "#14 answer"
a.map! do |words| 
  words.split(' ')
end
a = a.flatten.to_s
puts a

#15 What will the following program output?
hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}
# The output is 'These hashes are the same!' because a hash is not 
# ordered like an array is and the key-value pairs are identical.
puts
puts "#15 answer"
if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end

#16 Challenge: In exercise 11, we manually set the contacts hash values 
# one by one. Now, programmatically loop or iterate over the contacts hash 
# from exercise 11, and populate the associated data from the contact_data 
# array. Hint: you will probably need to iterate over 
# ([:email, :address, :phone]), and some helpful methods might be the 
# Array shift and first methods.
puts
contact_data = [
  ["joe@email.com", "123 Main st.", "555-123-4567"],
  ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]
]
contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
categories = [:email, :address, :phone]

contacts.each_with_index do |(name, hash), index|
  categories.each do |category|
    hash[category] = contact_data[index].shift
  end
end

puts
puts "#16 solution"
puts contacts
