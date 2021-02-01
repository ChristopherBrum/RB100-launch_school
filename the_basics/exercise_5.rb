# Factorial Exercise

def factorial(num) 
  sum = 0
  while num > 0 do 
    sum += num
    num -= 1
  end
  puts sum
end

factorial(5)
factorial(6)
factorial(7)
factorial(8)
