def cap_if_ten(string)
  if string.length > 10
    string.upcase
  else 
    string
  end
end 

puts cap_if_ten("hello world")
puts cap_if_ten("hi there")
puts cap_if_ten("oh hellllll yeah")