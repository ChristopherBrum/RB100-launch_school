number = 1234

puts 'The number in the 1000th position: ' + (number / 1000).to_s
puts 'The number in the 100th position: ' + ((number % 1000) / 100).to_s
puts 'The number in the 10th position: ' + ((number % 100) / 10).to_s
puts 'The number in the 1th position: ' + (number % 10).to_s