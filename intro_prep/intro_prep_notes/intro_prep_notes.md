History/Background of Ruby

Ruby was created in the mid 90's by Yukihiro Matsumoto, or "Matz", in Japan. It was designed to be read and implemented with a "human first" attitude, meaning it was meant to be friendlier to programmers.

Throughout the years computer science and programming have added different layers of abstraction to the experience of people using computers. High level programming languages make writing code easier/more human friendly and Ruby is no expection. Ruby is written in C, which then translates it to assembly language, which translates it to machine language which translates it into 1's and 0's that the computer can interpret. Ther are domain specific languages written in Ruby one level of abstraction higher that itself called Domain Specific Languages (DSL), like rails and rspec. 

The objective here is to understand Ruby and how it works in and with other layers of abstraction within the world of programming and computer science. 


Ruby Style

Tab button should be set to 2 spaces. 2 spaces is the standard indentation in Ruby and should be adhered here.

The '#' symbol is used to signify a single line comment. 
the '=begin' will make the start of a multiline comment and '=end' signifies the end. 

Decalring variables or methods always use snake case. 
  ie. snake_case = "hissss"

When defining a constant variable, a variable that will not change its value, you do so using all caps. 
  ie. FOUR = 4

Defining a block is done with either the do...end keywords or with {...}. When the entire code expression fits on on line use the {...} syntax. 
  ie. # Multi-line
      [1, 2, 3].each do |i|
        puts i
      end

      # Does the same thing in single line
      [1, 2, 3].each { |i| do_some_stuff }

When declaring a class the class name is written using camel case. 
  ie. class MyFirstClass
      end

      class MySecondClass
      end
    

Ruby Documentation

Reading documentation is one of the most important parts of learnig Ruby and learning to program using Ruby. 

You can find the Ruby documentation here:

  www.ruby-doc.org

Some people refer to the documentation as API (application programming interface) but that's a bit of a loaded word now and it also used to describe the way that applications talk to eachother too. The difference between someone saying...

  "Did you take a look at the Array API?"
  ...Meaning did you look at the documentation for the Array class, vs...

  "Whats the twitter API?"
  ...meaning they're talking about the programmatic interface to Twitter's services.


irb

irb stands for interactive ruby and it is an environment where you can run and test your ruby code. 

To open the irb console type 'irb' into the command line and it will open up the ruby environment. 
To get out of irb simply type 'exit' and hit enter. This will return you to the command line prompt.

If you create a ruby file (Ruby files end with .rb) and then type 'ruby' followed by the file name into the console, your console will run the ruby file you've selected. 


Gems

RubyGems are often referred to as gems. They're files consisting of two main sections: a collection of files or a library that perform a specific task within your ruby code. The other part is the publishing system for those files, ie. how gems are listed organized and published. 

rubygems.org is the site responsible for publishing and powering RubyGems.

To install a new gem simply enter:

  gem install <gem name>

Where gem name is the actual name of the gem file you're installing. 


Pry

Is a library that doubles as an alternative to irb, with many helpful features including debugging. 

Next, when you want to use pry for debugging you'll have to require "pry" and insert a binding.pry in your file like so:

  # preparation.rb
  require "pry"

  a = [1, 2, 3]
  a << 4
  binding.pry     # execution will pause here, allowing you to inspect all objects
  puts a

When the code gets to binding.pry it will stop and you can look at your code in that place of execution to see inside how the code is fucntioning. To continue the program type: Ctrl + D.