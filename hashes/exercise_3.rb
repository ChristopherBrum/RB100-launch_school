hash = {
  first_name: 'Chris',
  last_name: 'Brum',
  age: 37,
  language: 'english',
  nationality: 'american'
}
hash.each_key { |key| puts key }
hash.each_value { |value| puts value }
hash.each { |key, value| puts "This key: #{key}, is paired with this value: #{value}."}