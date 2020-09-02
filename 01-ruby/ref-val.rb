def short_strings(input)
  input.each_with_index do |word, i|
    # Slice characters 0 to 2
    input[i] = word[0..2]
  end
  return input
end

pets = ['dog', 'parrot', 'cat', 'llama']
puts "pets: #{pets}"
shortened_pets = short_strings(pets)
puts "shortened_pets: #{shortened_pets}" 


# def reassign_parameter(param)
#   puts "  Inside reassign_parameter"
#   puts "  at start, param.object_id is #{param.object_id}"

#   # .push modifies the underlying object
#   param.push('gecko')
#   puts "  after modification, param.object_id is #{param.object_id}"

#   # = changes the reference
#   param = ["new", "array"]
#   puts "  after reassignment, param.object_id is #{param.object_id}"
#   puts "  with value #{param}"
#   puts "  Finish reassign_parameter"
#   return param
# end

# pets = ["dog", "parrot", "cat", "llama"]
# puts "Before reassign_parameter"
# puts "pets.object_id is #{pets.object_id}"
# puts "with value #{pets}"
# puts

# pets = reassign_parameter(pets)

# puts
# puts "After reassign_parameter"
# puts "pets.object_id is #{pets.object_id}"
# puts "with value #{pets}"