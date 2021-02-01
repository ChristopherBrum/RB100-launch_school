Textbook

    - An array is an ordered list of elements that can be of any type. You can define an array by placing a list of elements between brackets
    - Arrays are what we call indexed lists. That means that each slot in an array is numbered. You can reference any element by its index number. The syntax to do this is typing the array name with the index in brackets [] directly following.
    - Note that when we called the pop method, the original array variable was modified (ie, this is a method that mutates the caller), but the returned value is the popped element, as shown in the first line above. This is a critical distinction to understand. Make sure you distinguish between the returned value by an expression, and what the expression is actually doing.
    - The bang suffix (!) at the end of the method name usually indicates that the method will change (or mutate) the caller permanently. Unfortunately this is not always the case. It is a good rule to be wary of any method that has the bang suffix and to make sure to check the Ruby documentation to see if it will behave destructively (the word "destructive" here just means mutating the caller).


Notes
    - What is an array?
        - An array is an ordered list of elements of any type. ie. strings, integers, flats, symbols, hashes, arrays.
    - What ways do we have for modifying arrays?
        - There's many built in ways we have for modifying an array but here are some common ones:
        - .pop removes the last element of an array. Permanently. This method does not have a bang sign (!) but will mutate the caller.
        - .push adds a new element to the end of an array. Permanently. This method does not have a bang sign (!) but will mutate the caller.
        - << is called the shovel operator and does the same thing as .push.
        - .map will iterate through an array and return a new modified array based on the. code written in its block. It's similar to .each but creates a new array.
        - .delete_at will remove an element from an array at the specified index.
        - .delete will delete all elements from an array that match the argument passed in.
        - .uniq will iterate over an array and return all the unique elements from the array in a new array.
    - What does it mean when a method is not destructive?
        - When a method is not destructive that means it does not mutate the caller. The array that the method is being called on will not change permanently.
    - Whats the difference between .delete and .delete_at?
        - .delete will delete the all elements that match the argument you pass. .delete_at will return one element at the index specified.
    - Can you append any method with the ! (bang suffix) to mutate the data you're calling the method on?
        - No you can't. Some methods, that don't mutate the caller, have an accompanying method that will mutate the caller and are identified with the bang suffix(!).
        - Some methods will mutate the caller and do not contain a bang suffix(!), so beware.
        - Always consult the docs to understand a method and its effects.
    - Whats the difference between the .each and the .map method?
        - .map will return a new array the same length as the original array but with the elements that have been iterated over.
        - .each will return the original array .
    - Why is .to_s important to understand when dealing with arrays?
        - .to_s is used to create a string representation of an array so that we can see the array printed out as opposed to the individual elements printed out.
        - If you create an array and then puts it, the console will print out each individual element of the array with [ or ] enclosing it, but if you puts the array with the .to_s method it will print a string representation which is easier to read and identify as an array.
    - What are some common array methods?
        - .include? will check to see if an array contains the argument given. The ? indicates that this method will return a boolean value.
        - .flatten will take an array with sub arrays within and 'flatten it down into a one-dimensional array.
        - .each_index works like the .each method but instead of iterating over the individual elements in an array it iterates through the arrays indexes.
        - .each_with_index combines the .each and the .each_index methods. This method has 2 parameters, the element and the index.
        - .sort will sort the elements of an array from least to greatest.
        - .product takes an array and creates new sub arrays with each element of the initial array array and the passed in array.
        - 
    - What do you call a method that ends with a ? and what should you expect as their outcome?
        - They are called **predicates**.
        - Expect a boolean value to be returned.
    - What a good way of remembering when we should use .each and when we should use .map?
        - Use .each for iteration
        - Use .map for transformation
    -Is there a quicker way to create an array of strings? 
        - You can use the shorthand %w( insert strings here ) to create an array of strings.
        - You don't need commas or quotations but remember that this only creates strings within the array.


Highlights
    - An array is an ordered list. The elements within an array can be of any type, including arrays and hashes.
    - We can modify arrays in many different ways. We can push a new element to an array with the #push method. The shovel operator is the same as the #push method (<<). We can remove the last element with the #pop method.We can add or remove an element to the front of an array by using the #unshift and #shift methods. There are many built in methods to work with arrays. Consult the docs for a full description.
    - When a method is not destructive that means the method will not mutate the caller or change the variable that the method is being called upon.
    - #delete method will delete all instances of an argument passed into it and #delete_at method  will the delete the element at the index thats passed into it.
    - The bang suffix (!) cannot be added to any method, some methods have a method! that will mutate the caller and a method that will not. Some methods will mutate the caller without a bang suffix. Consult the docs to be sure.
    - #each method returns the original array that has been iterated over and the #map method returns a new array that contains the iterated values.
    - When dealing with arrays they must be converted to a string to be printed out in the form of an array. If not converted to a string first each element will be printed out.
    - When dealing with a method that ends with a ? expect it to return a boolean value.
    - Methods that end with a ? are called **predicates**.
    - When choosing between #map and #each method some helpful ways to determine which would be better suited are:
        - #each is better for iteration
        - #map is better for transformation
    - A shorthand way of creating an array of strings is with the %w() format.
        %w(a b c d e)
        ⇒ ["a", "b", "c", "d", "e"]