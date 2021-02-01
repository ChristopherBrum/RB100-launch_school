def find_sub_string(word)
  if /lab/.match(word) # or /lab/ =~ word
      puts word
  else 
    puts "Not in the word!"
  end
end

find_sub_string("laboratory")
find_sub_string("experiment")
find_sub_string("Pans Labyrinth")
find_sub_string("elaborate")
find_sub_string("polar bear")