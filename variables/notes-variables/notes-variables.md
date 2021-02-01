- Variables
    - Textbook
        - A variables sole purpose is to label and store data in memory so it can then be used throughout your program.
        - When you assign a variable, you use the = symbol
        - Try your best to make sure that the name you assign your variable is accurately descriptive and understandable to another reader.
        - A variable's scope is defined by where the variable is initialized or created. In Ruby, variable scope is defined by a block.
        - The key distinguishing factor for deciding whether code delimited by {} or do/end is considered a block (and thereby creates a new scope for variables), is seeing if the {} or do/end immediately follows a method invocation.
        - There are five types of variables: constants, global variables, class variables, instance variables, and local variables.
    - Notes
        - What is a variable?
            - A variable is way of storing data or information that we can reference in different parts of our code base.
            - By using a descriptive name for a variable it makes it easier for yourself or others working or reading the code base to understand what the variable is storing.
        - How do you assign a variable?
            - A variable is assigned a name, it can be any name but care should be taken when choosing the name so that you or other persons who look at your code months or years in the future will need to easily be able to understand what the variable is storing.
            - A variable is assigned by entering the variable name, then the assignment operator = followed by the value that it is storing.
            - This stores the value in the current time and place of assignment. Any other variables that use or store its value will continue to hold this particular value, even if the variable is reassigned later on in the code base.
            - In ruby we use snake case for variable names. Snake case consists of all lowercase letters, and multiword variable names are connected with underscores, not spaces. ie. snake_case, my_first<name, etc.
        - Why would we want to store user data in a variable?
            - Storing user data and/or input from a user lets us interact with a user as well as gives us information about the user that can be used to personalize or interact with the program in interesting ways.
        - How do we store user data?
            - Similar to naming a non-user input variable, first type the variable name, then the assignment operator =, and then the keyword chomp.
            - gets is the keyword used to store user input to a variable.
            - gets will pause the execution of the assignment and wait for the user to input something, then it will assign the users input to the variable assigned to gets.
            - variable_name = gets
            - When the assignment is stored the console automatically adds a \n character to the end of the input. \n will send the console to a  newline after every time the variable is called. We don't always want that.
            - To get rid of the \n character we can add .chomp to the end of gets in our variable assignment.
            - gets.chomp
        - What is scope?
            - Scope is how a program determines where a variable or piece of data is available fort use.

            - A variables scope is determined by where the variable is declared within the code base.
            - In ruby scope is determined by block. A block is delimited by the code within the {...} or do...end within a ruby method.
            - Note: the key distinguishing factor for deciding whether code delimited by {} or do/end is considered a block (and thereby creates a new scope for variables), is seeing if the {} or do/end immediately follows a method invocation.
            - for...do/end loops are part of the Ruby language and not a method, therefore they are not considered blocks that create an inner or outer scope.
            - Variable declared outside of a method block are considered global, and thus available globally, including inside method blocks.
            - A variable declared inside of a method block is considered locally scoped and only available inside of that methods block, or within other method blocks nested within its own block.
        - Are there different kinds of variables?
            - There are 5 types of variables:
                1. Constants: are variables that store data that never changes. A constant is declared using all caps. ie. TEN = 10. Constants cannot be declared inside of a method definition, and are thus available throughout you applications scopes. 
                2. Global variables: are variables that are declared using a $ before the variable name. These variables are available everywhere in your application, overriding all scope boundaries. 
                3. Class variables: are variables declared at a class level, allowing all instances of the class access to the variable as well as the class itself . A class variable is declared using two @@ in front of the variable name. They can be altered using class or instance method definitions.
                4. Instance variables: are available throughout the current instance of the parent class. They are declared using one @ sign before the variable declaration.
                5. Local variables: are the most common variables  you will encounter. They obey all scope boundaries. 
    - Highlights
        - A variable is a way of storing data or information to be used in different areas and ways within an application.
        - It consists of a variable name, an assignment operator and the value to be stored.
        - Storing user data in a variable makes it easier to pass around and to tailor a program or application to a users needs or to make it more personal.
        - We can store data from a user with the keyword get. This keyword will wait until the user inputs something and then saves it to a variables, from which the input can be used in different ways.
        - Scope is how we determine the boundaries of where specific information is available within our application.
        - Scope is generally determined through blocks. A variable declared within a method block cannot be utilized outside of that block, but a variable declared outside of that scope can be used within the block.
        - In ruby we have 5 different types of scope: constant variables use all caps and cannot be changed. Global variables are declared with a $ in front of the variable name and is available anywhere in the application. Class variables start with two @@ and are available within an entire class. Instance variables start with one @ and are available within all instances of a class and can be modified. Local variables are the most common and have to obey the rules of all scoping within an app.