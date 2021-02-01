Textbook

    - There's a feature in most programming languages called a procedure, which allows you to extract the common code to one place. In Ruby, we call it a method. Before we can use a method, we must first define it with the reserved word def. After the def we give our method a name. At the end of our method definition, we use the reserved word end to denote its completion.
    - What we've done is extracted the logic of printing out text, so that our program can have more flexibility.
    - You can name parameters whatever you'd like, but like we said earlier, it is always the goal of a good programmer to give things meaningful and explicit names. We name the parameter words because the say method expects some words to be passed in so it knows what to say! Arguments are pieces of information that are sent to a method invocation to be modified or used to return a specific result. We "pass" arguments to a method when we call it. Here, we are using an argument to pass the word, or string of words, that we want to use in the say method definition. When we pass those words into the method definition, they're assigned to the local variable words and we can use them however we please from within the method definition. Note that the words local variable is scoped at the method definition level; that is, you cannot reference this local variable outside of the say method definition.
    - One of the benefits that methods give us is the ability to make changes in one place that affect many places in our program.
    - If you're wondering if Ruby is a pass-by-value or pass-by-reference language, then you might be disappointed with the answer. In a way, Ruby is both!
    - Ruby methods ALWAYS return the evaluated result of the last line of the expression unless an explicit return comes before it.
    - One of the major points that you will want to take away from this section is that the return reserved word is not required in order to return something from a method. This is a feature of the Ruby language.
    - It turns out `puts` returns `nil`, and since `puts n + 3` is the last expression in the method definition, `nil` is now being returned by the `add_three` method call. We can now no longer use `add_three` to keep chaining methods since it returns `nil`. This is a very important aspect of chaining methods together: if anywhere along the chain, there's a `nil` or an exception is thrown, the entire chained call will break down. If we want the `add_three` method to print out the incremented value as well as return it, then we have to make this fix:
    - In Ruby, methods aren't the only thing that uses the call stack. Blocks, procs, and lambdas also use the call stack; in fact, they all use the same call stack as Ruby uses for methods. For simplicity, we will usually just mention methods when discussing the call stack. However, you should always remember that blocks, procs, and lambdas are also part of this process.
    - The call stack helps Ruby keep track of what method is executing as well as where execution should resume when it returns. To do that, it works like a stack of books: if you have a stack of books, you can put a new book on the top or remove the topmost book from the stack. In much the same way, the call stack puts information about the current method on the top of the stack, then removes that information when the method returns.
    - In Ruby, methods aren't the only thing that uses the call stack. Blocks, procs, and lambdas also use the call stack; in fact, they all use the same call stack as Ruby uses for methods. For simplicity, we will usually just mention methods when discussing the call stack. However, you should always remember that blocks, procs, and lambdas are also part of this process.
    - The call stack initially has one item -- called a stack frame -- that represents the global (top-level) portion of the program. The initial stack frame is sometimes called the main method. Ruby uses this frame to keep track of what part of the main program it is currently working on.
    - The call stack has a limited size that varies based on the Ruby implementation. That size is usually sufficient for more than 10000 stack entries. If the stack runs out of room, you will see a SystemStackError exception.

Notes

    - What is a method?
        - A method is a way of compartmentalizing a pieces of code that perform the same function multiple times within a code base, into one repeatable piece of code.
        - All programming languages have a version this called a procedure.
        - In ruby we call this a method.
    - Why do we need methods?
        - Methods take repeating pieces of code and extract the repeated functionality into a method, allowing you to pass in the part of the code that changes without rewriting the functional portion of the code over and over.
        - Methods extract the logic of a repeating piece of code making it more flexible.
    - How do we make a method and how do we use a method?
        - In ruby a method definition defined by using the the keyword def (stands for define), followed by the methods name, then parenthesis (where the parameter(s) would go).
        - On the line(s) after the parameters you would write the logic for your method.
        - You must use the keyword end at the end of your method in order to complete the block.
        - In order to call or invoke a method you will type the name of the function with parenthesis. If you have any parameters you will pass them in between the parenthesis in the form of arguments.
        - There's two ways to call a method, the way we showed above by sending arguments to a method call...
        
        def some_method(parameter)
          some logic
        end

        - You can also call a method with an explicit caller...
        - a_caller.some_method(argument)
    - What is a parameter, what is an argument and how are they different?
        - A parameter is a variable created within a method that allows you to pass data through into the method when the method is called. Because the parameter is defined within the method it is locally scoped and cannot be called or utilized outside of method.
        - An argument is a piece/pieces of information/data that are passed into a method when the method is called.
        - The arguments value(s) are assigned to the parameter(s) within in the method when the method is called.
        - 
    - Do I always need to pass in an argument to a method?
        - No. Not all methods require an argument.
        - Not all methods have parameters either.
        - You can add a default parameter to a method within the parenthesis when declaring a method. Simply add = and a default parameter.
        def say(phrase="Hello")
          puts phrase
        end 

        - If an argument is passed into a method with a default parameter the argument passed in will override the default.
        - When calling a method without arguments the parenthesis are optional.
    - How is scope different for a method?
        - When you define a method the def/end keywords delineate the opening and closing or a new scope, a local scope.
        - Within the methods local scope variables from outside of the method are not seen, and vice versa.
        - A variable can be brought into the scope of a method by way of arguments though, and depending on the logic of the method the value of the argument can be mutated.
    - What is mutating the caller?
        - Mutating the caller is when you the value of an argument passed to a method is permanently altered by the logic of the method.
        - Different built in methods in Ruby will or will not mutate the values they're applied to.
        - Consult the documentation or memorize what methods mutate.
    - Whats the difference between puts and return?
        - Puts is a keyword in ruby that prints something to the console, then drops down to the next line.
        - Return is a keyword that doesn't necessarily print anything to the console but rather returns the value of whatever expression its returning

        def add_two(num)
          num + 10
        end

        add_two(5)
        ⇒ 7

        - Ruby methods ALWAYS return the last evaluated expression, unless a an explicit return keyword comes before it.
        - The above expression returns 7 implicitly.
        
        def add_two(num)
          return num + 2
          num + 10
        end

        add_two(4)
        ⇒ 6

        - The above expression expression returns 6 explicitly, and does not continue to the line after it.
    - What does chaining methods mean?
        - In ruby you can chain methods together to create expressive and succinct code.
        - This is only possible to do if the method being chained onto returns a value.
        - If a method uses print or puts to print out a value after running it through its code block the value will be printed to the console but it will return nil, and not allow method chaining.
        - puts and print return nil.

        def add_three(n)
          n + 3
        end

        add_three(2).times { puts "Hello" }

        Hello
        Hello
        Hello
        Hello
        Hello 

        - If the method above said puts n + 3 the method chain would result in an error because add_three returned nil.
        - The return keyword is not required at the end of a method block because ruby methods automatically return the last executed line, unless a return keyword was explicitly used in the methods code block previously.
    - Can you pass method calls as arguments?
        - Yup, if you pass a method as an argument the method it's being passed into takes the returned value of the argument method.
    - How does the call stack work?
        - The call stack or 'stack' is how ruby keeps track of method execution, as well as where the program should resume once a method has completed executing.
        - The last in, first out approach to executing methods. Meaning the last method placed on the stack will be the first method to be executed.
        - Methods, blocks, procs and lambdas all operate the same way with stack execution.
        - When something is added to the stack we refer to its space in the stack as a frame.
        - When executing a ruby program the program in its entirety is added to the stack in whats called the 'stack frame' also referred to as the 'main method'. This is the first frame added to the stack and represents the global/top-level portion of the stack.
        - When the program is running it starts at the top and works its way down.
        - When the program reaches a method invocation it stops and adds that method call to a frame on top of the main method. We say the methods been 'pushed' onto the stack. The main method below is frozen and cannot be accessed until the method on top of it has been fully executed.
        - The program then begins running through the code within the method line by line. Lets say the first line in the method calls another method. This will then freeze the first method call on the line that the second method was called, and add the second method to the stack.
        - The program then begins executing the code within the second method line by line. The second method call consists of a line of code that 'puts' a piece of text. When the program gets to this line it freezes the method call at the line that the puts method was called and adds the puts method to the stack. The puts method asks the program to print something to the console and then returns.
        - When the puts method returns it is removed from the call stack and then the second method resumes executing. If there is no more code to be executed in the second method it returns.
        - Once the second method returns it is removed from the stack and the program continues executing the first method until it returns.
        - Once the first method returns the program removes the first method from the stack. It's back to the main method now and the program will continue executing the program from where the first method call left off. If there are no more method calls the program finishes and the main method is removed from the stack.
        - There is a limit of how large a stack can be, if your stack goes over 10,000 frames it will return a StackSystemError.


Highlights

- Methods are pieces of repeatable code that can be used in many places throughout your program.
- They allow programmers to make programs more flexible and concise.
- Methods a defined by an opening and closing keyword def...end, a method name, optional parameters and the logic within the method block.
- To call a method you simply type the method name after the method declaration, that will run the method. You can add parameters if the method allows within parenthesis at the end of the method name.
- Arguments aren't always required but it depends on the method. If no argument is required the parenthesis at the end of the method call are optional.
- All of the code within a method is scoped locally to that method. Variables from outside cannot be accessed inside, and vice versa.
- Mutating the caller is when the argument passed into a method is permanently altered by the method. Some methods mutate the caller and others don't.
- Puts will print something to the screen but always return nil, return is the value an expression or method after execution.
- Besides calling methods with standard method calls you can also chain them together via dot notation as long as the methods always return a value. If any of the methods chained together return nil it will return an error.
- string.split('').each { |x| puts x }
- Methods can be passed to other methods as arguments because the method will take the returned value of the argument method.
- The call stack is a way of organizing the order in which a program is executed. It operates on a last in, first out basis, similar to stacking up a pile of books. As a method is called it is added to the stack to be executed. Once executed it is removed from the stack and the program can continue working its way through the program.