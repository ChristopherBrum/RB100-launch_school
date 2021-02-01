Ruby Basics

-Always use 2 spaces for indenting

-Always use snake_case when formatting your code:  Example --> snake_case.rb
          --> this_is_what_snake_case_looks_like.md
          --forty_two = 42

-When making a contant declaration, a value that will not change, use all capitals: 
  Example --> HUNDRED = 100
          --> MYNAME = 'Chris'

-If your do...end block can fit on one line the wrap it in {}:
  Example [1, 2, 3].each do |i|
            do_some_stuff
          end

          [1, 2, 3].each { |i| do_some_stuff }

-When declaring a class name you use CamelCase. Everyword is capitalized and there are no spaces.
  Example class MyFirstClass
          end

          class MySecondClass
          end


Ruby is an interpreted programming langauge, meaning it does not go through a compiling phase before it executes. 


Data types in Ruby: Numbers, Strings & Booleans


Puts returns whatever value you tell it to and then adds a new line character at the end. 
Prints returns whatever the value you tell it to but does NOT add a new line character at the end.


Single line comments in Ruby are signified with the # before the comment.
Multi-line comments begin with =begin and end with =end.

=begin 
Here is a
multi-line
comment that I've 
made.
=end

*no spaces between the begin/end and the = sign


Ruby won't stop ypou from begining a vartiable name with symbols or characters but it confusing and generally not done. 


if, elsif, else: conditional statement syntax.

unless is similar to if/elsif/else but checks the conditional statement is false instead of true. 


comparater operator is ==


Utilizing ! at the end of a built in class method will mutate the variable/data its attacherd to.


When working with ranges of numbers you can represent them as follows:

  1..10 as well as 1...10

The difference is that:
  
  1..10 includes 10
  1...10 excludes 10


In Ruby, curly braces ({}) are generally interchangeable with the keywords do (to open the block) and end (to close it).


Symbols are used as hash keys or for referencing methods.
They look like this:   :something
They always start with a colon followed by a lowercase letter.
They make good hask keys because they're immutable.
Symbols are one of a kind. Even if they have the same name they have a different object ID as opposed to other data types like strings and numbers.
Because of this they're faster as hash keys then strings as keys.

Converting between strings and symbols is easy.
:sasquatch.to_s
# ==> "sasquatch"
 
"sasquatch".to_sym
# ==> :sasquatch

the hash syntax changed in Ruby 1.9. to look like 
  new_hash = { 
    one: 1,
    two: 2,
    three: 3
  }
  
1. You put the colon at the end of the symbol, not at the beginning;
2. You don’t need the hash rocket anymore.


The assignment operator (=) allows you to assign a variable or reassign an existing variable. There's another option that will only assign a variable if that variable hasn't been assigned previously. It looks like ||=


The .times method is an easy way to loop through something a specific number of times.

  Example   5.times { puts "Hey there!" } 
  # Prints 5 "Odelay!"s on separate lines

              -> Hey there!
              -> Hey there!
              -> Hey there!
              -> Hey there!
              -> Hey there!


If we want to repeat an action for every element in a collection, we can use .each:

  [1, 2, 3].each { |x| puts x * 10 }
  # Prints 10, 20, 30 on separate lines

              -> 10
              -> 20
              -> 30


.upto & .downto are two similar ruby methods like .times but that allow you to set the starting number and the end number to iterate through.

  95.upto(100) { |num| print num, " " }
  # Prints 95 96 97 98 99 100


A simple way to check if a particular method will work on a piece of data or variable in your code base is with the .respond_to? method. By running this method on the variable or piece of data you're working with, followed by the method you'd like to know if it will work on said peice of data or variable within parenthesis. Note the method in the parenthsis needs to be in a SYMBOL. 

  [1, 2, 3].respond_to?(:push)
  # returns true

  [1, 2, 3].respond_to?(:to_sym)
  # returns false


Another simple shortcut for concatenating or a shorthand for the push method is <<

  [1, 2, 3] << 4
  # ==> [1, 2, 3, 4]

  "Yukihiro " << "Matsumoto"
  # ==> "Yukihiro Matsumoto"


yield 

A yield allows you to pass you own block of code along with a method call. The method must have a yield keyword in it and the method call must have a block of code added to the end of the call. 

  def double(num)
    yield(num)                      # yield call within the method
  end

  puts double(2) { |n| n * 2 }      # block connected with the method call

The yield keyword in the method sends the parameter to the block of code on the method call.


proc

A proc is a way of storing a block of code in a variable to be used in multiple places in your code base. 

To create a new proc:
  
  cube = Proc.new { |x| x ** 3 }

A & must prepend your proc when passing it to a method expecting a block of code. 

  [1, 2, 3].collect!(&cube)
  # ==> [1, 8, 27]
  [4, 5, 6].map!(&cube)
  # ==> [64, 125, 216]


There are two main advantages to saving our blocks as procs:

  1. Procs are full-fledged objects, so they have all the powers and abilities of objects. (Blocks do not.)

  2. Unlike blocks, procs can be called over and over without rewriting them. This prevents you from having to retype the contents of your block every time you need to execute a particular bit of code.

Example 

  # Here at the amusement park, you have to be four feet tall
  # or taller to ride the roller coaster. Let's use .select on
  # each group to get only the ones four feet tall or taller.



  group_1 = [4.1, 5.5, 3.2, 3.3, 6.1, 3.9, 4.7]
  group_2 = [7.0, 3.8, 6.2, 6.1, 4.4, 4.9, 3.0]
  group_3 = [5.5, 5.1, 3.9, 4.3, 4.9, 3.2, 3.2]

  # These blocks can be condensed down using one proc
  can_ride_1 = group_1.select { |height| height >= 4 }
  can_ride_2 = group_2.select { |height| height >= 4 }
  can_ride_3 = group_3.select { |height| height >= 4 }

  # Here's the proc that takes has the same functionality as the above blocks...
  over_4_feet = Proc.new { |num| num >= 4 }

  # Then impletement with less repeating code...
  can_ride_1 = group_1.select(&over_4_feet)
  can_ride_2 = group_2.select(&over_4_feet)
  can_ride_3 = group_3.select(&over_4_feet)

  puts can_ride_1
  puts can_ride_2
  puts can_ride_3


A shorter way of writing a proc is with the .call method.

  hi = Proc.new { puts "Hello1" }
  hi.call

  -> Hello!



You can also convert symbols to procs using that handy & sign...

  numbers_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

  strings_array = numbers_array.map(&:to_s)


Lambda

Very similar to a proc but with 2 main differences:

  1. A lambda checks the number of arguments passed to it and will throw an error if the number is incorrect, a prop will not but will instead return nil for any arguments missing.

  2. When a lambda returns something it will return control back to the calling method, whereas a proc returns from the calling method entirely.

Structurally the same as a proc.

  my_array = ["raindrops", :kettles, "whiskers", :mittens, :packages]

  # creating a lambda...
  symbol_filter = lambda { |el| el.is_a? Symbol }

  # filtering my_array through the lambda (symbol_filter) and storing in symbols variable
  symbols = my_array.select(&symbol_filter)

  puts symbols


Clarifying Blocks, Procs and Lambdas

Block: 
  -just a bit of code between do...end or {...}
  -not an object on its own
  -can be passed to methods like .each or .select

Procs:
  -is a saved block we can use repeatedly
  -return keyword will return out of the calling method 

Lambdas:
  -similar to proc but cares about the number or arguments passed to it
  -return keyword will return back to the calling method