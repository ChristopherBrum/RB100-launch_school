arr = ["b", "a"] # creates new array with two elements
arr = arr.product(Array(1..3)) # this combines the original arr with a new arr [1, 3] by using the product method
arr.first.delete(arr.first.last) # this deletes the last element of the first element of the arr. The 1 in the first sub array.

puts arr.to_s
# will return => [["b"], ["b", 2], ["b", 3],["a", 1], ["a", 2],["a",3]]

arr2 = ["b", "a"]
arr2 = arr2.product([Array(1..3)])
arr2.first.delete(arr2.first.last)

puts arr2.to_s
# will return [ ["b"], ["a", [1, 2, 3]] ]