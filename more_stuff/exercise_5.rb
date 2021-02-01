def execute(block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

# Why does this code give us the following error when we run it?

# The parameter 'block' is not recognized as a block with the & prepending the paramenter name. 