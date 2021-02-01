Textbook

    - When you are writing programs, you want your data to make the right decisions. You want your data to do the right thing when it's supposed to. In computer programming, this is called conditional flow.
    - The expressions or values that an operator uses are its operands. In comparisons, the expressions to the left and right of the operator are the operands.
    - In Ruby, every expression evaluates to true when used in flow control, except for false and nil.


Notes

    - What does control flow mean?
        - Control flow is referring to the path that   data/user input flow through your program. This is an important part of writing code well and must be thought about deeply before building apps or programs.
    - What do conditionals do?
        - A conditional is a fork in the path that data/user input takes within a program based on parameters defined in the code.
    - What comparisons can we use in conditionals?
        - Conditionals come in the form of if/elsif/else statements or case statements and both use comparison or logical operators to render a boolean value (true or false).
        - If statements and case statements will compare two or more values and determine whether the statement is true or false. Based on the condition if the condition is met a piece of code will be executed. If not it will continue to the next condition, if there is one, and evaluate if that condition is met or not.
        - Else in 'if' and 'case' statements is a way of defaulting to a piece of code if none of the previous conditions are met.
        - Logical operators are: <, > , ≤, ≥, ==, !=, &&  and ||
        - if statements have multiple ways to write them including one line versions:
        
        puts "x is 3" if x == 3
        puts "x is NOT 3" unless x == 3
    - How does ruby determine greater or less than with numbers that are strings?
        - When numbers are in string form and are being evaluated against one another ruby starts with the first element of the number and compares its value. For example...
        - "1000" > "200"
        - ...is false because it evaluates the first item from each string and 1 is not greater than 2.
        - If the string numbers are the same up to a certain length, the longer string number will be considered greater. For example...
        - "200" < "2000"
        - ...is true, because the first three elements in each string are equal so the longer string will be considered greater.
    - Can you combine multiple conditions to one statement?
        - Yes, the && and || statements let you combine multiple conditional statements together.
        - The && returns true if both sides of the statement return true.
        - The || returns true if one of both sides of the statements return true.
             - What is the order or precedence?
        - Like the order operations the order of precedence prioritizes conditional operations into 4 categories from high to low:

            -comparison ≤, ≥, >, <

            -equality ==, !=

            -logical AND &&

            -logical OR ||

    - What are ternary operators used for?
        - Ternary operators allow you add quick and concise conditional statements on one line. For example...
        - 10 ≥ 5 ? "This is true" : "This is false"
        - ...the conditional statement goes first and returns a boolean value, if it evaluated to true then the statement to the right of the '?' is returned and if it evaluates to false then the statement to the right of the ':' is executed.
        - Note that puts and prints statements will not work in ternary operators and the statement is implicitly returned.
    - Why would you use a case statement instead of an if statement?
        - A case statement can make a conditional statement with many different conditions to be check more concise and easy to read than an if statement.
        - The case statement doesn't require writing out each specific condition to be checked but instead can check for a specific piece of data and the associated code to be executed if that condition is true. For example...

            a = 5

            case a
            when 5
              puts "a is 5"
            when 6
              puts "a is 6"
            else 
              puts "a is neither 5, nor 6"
            end

        - A case statement can take conditional statements as well but generally an if statement is more common to use in that case.
    - How else can we use true and false to our advantage in ruby?
        - A full conditional statement is not required for expressions needing boolean values.
        - In ruby, every expression evaluates to true when used in control flow except for false and nil.
        - With that being said you can check if a variable contains a value with a simple conditional statement. For example...

            name = "Chris"

            if name
              puts "#{name} is my name!"
            else
              puts " I have no name"
            end

        - ...the if statement checks to see if name is 'true' or 'truthy' meaning as long as it isn't false or nil it will return true.
- Highlights
    - Control flow refers to how data/user input is guided through a program via a series of methods and conditions.
    - Conditionals are basically forks in the control flow path. They have a condition that will either result in a true or a false return and based on that boolean value the program will send the data/user input down one path or another.
    - There are many comparison operators in ruby. Most commonly we use ≤, <, >, ≥, ==, !=, && and ||.
    - If ruby is comparing numbers in string form it starts at the beginning of both strings and compares their values, if equal it will move on to the next element in each string. Note that 1000 > 200 is true but "1000" > "200" is false because 1 != 2.
    - You can combine multiple conditions in one statement by using the && operator and the || operator. The && operator will only return true if both sides of the operator return true. || will return true if one or both sides return true.
    - Order of precedence refers to the order that ruby evaluate a conditional statement based on its operators. The order from highest to lowest is:

        -comparison <, >, ≤, ≥

        -equality ==, !=

        -logical AND &&

        -logical OR ||

    - Ternary operators allow you to write short and concise one line conditional statements. If the condition is true the code to the right of the ? is returned, if false the condition to the right of the : is returned.

        10 < 100 ? "this is true" : "this is false
        ⇒ this is true

    - Case statements can save you from repeating yourself in some cases. Instead of rewriting conditions and changing a singular component in the condition case statements allow you look for the single piece of data that is being compared.
    - Truthy and falsy are versions of true or false. Everything in ruby evaluates to true except for false and nil, so you can often check if something holds a value by simply checking if its truthy.

        a = 10 

        if a
          puts "#{a} is a number and not nil or false"
        end