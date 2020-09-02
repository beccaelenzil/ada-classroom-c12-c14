#pattern = /ada/i
pattern = /[Aa][Ddx][Aa]/

# puts if pattern.match("ada")
#   "It has ada in it!"
# else
#   "No ada"
# end

# pattern.match("ada") ?  puts "It has ada in it!" : puts "No ada"

#p pattern =~ "HELLO ADA ADA"
#p pattern =~ "HELLO ADA ADA"
#p pattern.match("HELLO ADA ADA")
# p pattern =~ 'aDA'
# p pattern =~ 'AxA'

# pattern = /[A-Z][a-z][0-9]/
# "Ab1"

# pattern = /[A-Za-z0-9]/

pattern = /^\$\d+\.\d\d$/

test_strings = ['12345$3.25', '$102.73', '$0.25', '$1000.73',
'$10.7', '$10.707']

test_strings.each do |item|
  puts pattern.match(item) ? "#{item} is valid" : "#{item} is not valid"
end

# pattern = /[a-z0-9]+@[a-z0-9]+\.(com)|(net)|(org)|(edu)|(dev)|(adade)/

# pattern =~ 'becca@puppies.supplies'