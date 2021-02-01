person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}


if person.has_value?('painting')
  puts "That value is in the hash!"
else
  puts "It's not in the hash."
end