def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

# OR

def execute()
  yield
end

execute { puts "Hello from inside the execute method!" }