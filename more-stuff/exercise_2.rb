def execute(&block)
  block
end

execute { puts "Hello from inside the execute method!" }

#nothing printed to screen block is not activated with .call method