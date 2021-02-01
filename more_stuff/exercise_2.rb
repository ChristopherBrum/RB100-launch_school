def execute(&block)
  block
end

execute { puts "Hello from inside the execute mehod!" }

# will return => Nothing because the .call method was utilized on block
# Can add .call or remove the parameter and replace block with yield.