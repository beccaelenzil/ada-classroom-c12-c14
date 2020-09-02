

do_a_thing(my_var)
  # guard clause 
  raise ArgumentError unless my_var > 0

  if my_var
    puts "hello world"
  end
end