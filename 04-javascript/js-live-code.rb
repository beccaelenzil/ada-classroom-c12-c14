#1. Create an array with 5 names. Print out the 5 names in all UPPERCASE all on the same line.
puts "1. Create an array with 5 names. Print out the 5 names in all UPPERCASE all on the same line.\n"

names = ["becca", "dee", "devin", "chris", "kaida"]
name_string = ''

names.each do |name|
  name_string += name.upcase+' '
end

puts name_string

#2a. Create an array with 3 boolean values. Print out YES if all the values are true and NO if at least one value is false. 

puts "\n2a. Create an array with 3 boolean values. Print out YES if all the values are true and NO if at least one value is false.\n"

boolean_vals = [true, true, true]
counter = 0

boolean_vals.each do |val|
  if val == false
    counter += 1
  end
end

if counter == 0
  puts "YES"
else
  puts "NO"
end


#2b. Write a function that takes an array of boolean values as an argument. Return YES if all the values are true and NO if at least one value is false.

puts "\n2b. Write a function that takes an array of boolean values as an argument. Return YES if all the values are true and NO if at least one value is false.\n"

def yes_no(boolean_vals)
  boolean_vals.each do |val|
    if val == false
      return "NO"
    end
  end
  return "YES"
end

puts yes_no([true, true, false])
puts yes_no([true, true, true])