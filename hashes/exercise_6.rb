x = "hi there"
my_hash = {x: "some value"}
my_hash2 = {x => "some value"}

puts my_hash[:x]

# my_hash's key is the symbol x, while my_hash2's key is the variable x, 
# which is assigned to the string "hi there". You can call the value in my_hash2
# with the variable x or the string 'hi there'