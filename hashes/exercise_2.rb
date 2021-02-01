hash_one = {
  name: 'Chris', 
  age: 37, 
  location: 'California'
}

hash_two = {
  last_name: 'Brum',
  age: 27,
  occupation: 'Software Engineer'
}

hash_one.merge(hash_two)
p hash_one
p hash_two

hash_one.merge!(hash_two)
p hash_one
p hash_two