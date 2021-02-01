Textbook

    - A loop is the repetitive execution of a piece of code for a given amount of repetitions or until a certain condition is met. We will cover while loops, do/while loops, and for loops.
    - The break keyword allows us to exit a loop at any point, so any code after a break will not be executed. Note that break will not exit the program, but only exit the loop and execution will continue on from after the loop.
    - break and next are important loop control concepts that can be used with loop or any other loop construct in Ruby, which we'll cover one by one below. When combined with conditionals, you can start to build simple programs with interesting behavior.
    - A while loop is given a parameter that evaluates to a boolean (remember, that's just true or false). Once that boolean expression becomes false, the while loop is not executed again, and the program continues after the while loop. Code within the while loop can contain any kind of logic that you would like to perform.
    - We didn't mention the until loop in the introduction paragraph. We do, however, need to mention them briefly so that you know about them. The until loop is simply the opposite of the while loop. You can substitute it in order to phrase the problem in a different way.
    - A do/while loop works in a similar way to a while loop; one important difference is that the code within the loop gets executed one time, prior to the conditional check to see if the code should be executed. In a "do/while" loop, the conditional check is placed at the end of the loop as opposed to the beginning.
    - In Ruby, for loops are used to loop over a collection of elements. Unlike a while loop where if we're not careful we can cause an infinite loop, for loops have a definite end since it's looping over a finite number of elements. It begins with the for reserved word, followed by a variable, then the in reserved word, and then a collection of elements. We'll show this using an array and a range. A range is a special type in Ruby that captures a range of elements. For example 1..3 is a range that captures the integers 1, 2, and 3.
    - The odd thing about the for loop is that the loop returns the collection of elements after it executes, whereas the earlier while loop examples return nil. Let's look at another example using an array instead of a range.
    - Most Rubyists forsake for loops and prefer using iterators instead.
    - We have called the each method using the dot operator (.) on our array. What this method does is loop through each element in our array, in order, starting from 'Bob'. Then it begins executing the code within the block. The block's starting and ending points are defined by the curly braces {}. Each time we iterate over the array, we need to assign the value of the element to a variable. In this example we have named the variable name and placed it in between two pipes |. After that, we write the logic that we want to use to operate on the variable, which represents the current array element. In this case it is simply printing to the screen using puts.
    - A block is just some lines of code ready to be executed. When working with blocks there are two styles you need to be aware of. By convention, we use the curly braces ({}) when everything can be contained in one line. We use the words do and end when we are performing multi-line operations. Let's add some functionality to our previous program to try out this do/end stuff.
    - Recursion is another way to create a loop in Ruby. Recursion is the act of calling a method from within itself. That probably sounds confusing so let's look at some actual code to get a better idea.


Notes

    - What is a loop?
        - A loop is a way of repeating a block of code a specified number of times or until a condition is met.
    - How do loops work
        - Different loops work a little differently but the basic idea of loop is that it allows you to move through different data types and execute code on each element or on specified elements quickly and concisely.
        - Sometimes you will need to run a command on each element of a long piece of data. Writing code for each individual piece is not efficient. A loop allows you to go through each element or until a specific condition you've designated has been met.
    - Are there different kinds of loops?
        - Yes, we have simple loops, while loops, do/while loops, until loops, for loops, iterators and recursion.
    - What do break and next do?
        - When a loop encounters a break keyword it immediately exits the loop and continues executing the program from where the loop ends.
        - Sometimes you will create a loop to go through each element of a long pice of data and have certain conditions set up to be checked with each iteration of the loop and then break from the loop once that condition has been met.
        - When a certain condition has been met in your loop a next keyword will immediately skip to the next iteration of the loop.
    - Whats the difference between a while loop, a do/while loop, a for loop and an until loop?
        - A while loop sets a condition up that will allow a loop to continue 'while' the condition is still true. Once the condition is no longer true the loop will end.
        - A do/while loop is very similar to a while loop except that the condition is checked after the code inside the loop is executed. This ensures that the code block inside the loop will always be executed at least once.
        - A for loop allows you to loop through a piece of data like an array or a hash without setting up a counter or condition that needs to be met to break out op the loop.  The for loop will loop through every element in a piece of data through its index once and then stop.
        - An until loop is like a while loop but the opposite. It will continue executing the loop while the condition is not being met.
    - What is the benefit of combining conditionals and loops?
        - Combining conditionals with loops is a very powerful tool that allows you alter how you loop through data and what you do with data in a loop.
    - How does an iterator work?
        - An iterator is a built in ruby method that will allow you to execute code and every element from a piece of data, like an array or hash.
    - Whats the benefit of using an iterator over a loop?
        - Iterators are generally safer and easier to use than a loop and there in no possibility of creating an infinite loop. Iterators also tend to be shorter, more concise and easier to read.
    - What's the difference between recursion and a loop or iterator?
        - Recursion is a way of looping a method by calling itself from with the method. Loops will continue forever until a certain condition is met where recursion is just a method being called is the same method thats making the call.

Highlighted
    - A loop is a pice of repeating code, often used to look through data until a certain condition is met.
    - Looping is the process of telling the program to run a specific number of times, or by incrementing a variable until a condition is met, or by looping until a specific piece of data is found.
    - Looping allows you apply code to a huge amount of data quickly and precisely.
    - There's a number of different types of loops: common loops, for loops, while loops, do/while loops, until loops.
    - While loops loop while a certain condition remains true.
    - Until loops loop while a certain condition remains false, or until it becomes true.
    - Do/while loop is a while loop but the code block is executed before the condition is checked.
    - For loop will loop through a piece of data that is iterate-able from start-to-finish.
    - Combining conditionals with loops allows you to do complex and specific things in an easy and precise manner. It controls the flow of how the loops loops and processes information based on the guidelines you give it.
    - An iterator is a way of looping over a piece of data that is iterate-able. It goes through each element of the data one at a time and will apply each individual element of the data to the code block given.
    - Iterators go through a piece of data element by element and will not cause infinite loops.
    - Recursion is a way of looping by way of a method checking a condition and if not met calling itself until the condition is eventually met.