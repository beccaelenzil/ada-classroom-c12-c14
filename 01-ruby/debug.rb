def cool_sum_func(a, b)
  puts "a = #{a}"
  puts "b = #{b}"

  #completely necessary if-else
  if a % 2 == 0
    return add_them(a, b)
  else
    b += 2
    return subtract_them(a, b)
  end
end

#adds two numbers
def add_them(a, b)
  return a + b
end

#subtracts b from a
def subtract_them(a, b)
  return a - b
end

puts "Enter a number: "
left_num = gets.chomp
puts "Enter another number:"
right_num = gets.chomp

sum = cool_sum_func(left_num, right_num)

puts sum