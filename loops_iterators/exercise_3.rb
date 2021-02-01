puts "Give me a number"
original_num = gets.chomp.to_i

def get_to_zero(num)
  if num <= 0
    puts num
    puts "You did it!"
  else 
    puts num
    get_to_zero(num - 1)
  end
end

get_to_zero(original_num)