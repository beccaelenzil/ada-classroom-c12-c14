names = ['Grumpy', 'Happy', 'Sleepy', 'Bashful', 'Sneezy', 'Dopey', 'Doc']
specialties = ['grump', 'smile', 'nap', 'blush', 'sneeze', 'goof', 'contemplate']

# => [{:name=>"Grumpy", :specialty=>"grump", :id=>1},
# {:name=>"Happy", :specialty=>"smile", :id=>2},
# {:name=>"Sleepy", :specialty=>"nap", :id=>3},
# {:name=>"Bashful", :specialty=>"blush", :id=>4},
# {:name=>"Sneezy", :specialty=>"sneeze", :id=>5},
# {:name=>"Dopey", :specialty=>"goof", :id=>6},
# {:name=>"Doc", :specialty=>"contemplate", :id=>7}]

def combine_lists(names, specialties)
  result = []
  # names.each_with_index do |name, i|
  #   result << {name: name, specialty: specialties[i], id: i+1}
  # end
  i = 0
  names.each do |name|
    result << {name: name, specialty: specialties[i], id: i+1}
    i += 1
  end
  return result
end

#puts combine_lists(names, specialties)


# => [["Grumpy", "grump"], ["Happy", "smile"], ["Sleepy", "nap"], ["Bashful", "blush"], ["Sneezy", "sneeze"], ["Dopey", "goof"], ["Doc", "contemplate"]]

def arrays_of_arrays(names, specialties)
  result = []

  # initialize iterator
  i = 0

  #loops through names
  specialties.each do |specialty|

    # shovel sub_array into result
    result.push([names[i]] + [specialty])

    # increment iterator
    i += 1
  end
  return result

end

characters = [{:name=>"Grumpy", :specialty=>"grump", :id=>1},
              {:name=>"Happy", :specialty=>"smile", :id=>2},
              {:name=>"Sleepy", :specialty=>"nap", :id=>3},
              {:name=>"Bashful", :specialty=>"blush", :id=>4},
              {:name=>"Sneezy", :specialty=>"sneeze", :id=>5},
              {:name=>"Dopey", :specialty=>"goof", :id=>6},
              {:name=>"Doc", :specialty=>"contemplate", :id=>7}]

# => ["Grumpy's specialty is to GRUMP",
# "Happy's specialty is to SMILE",
# "Sleepy's specialty is to NAP",
# "Bashful's specialty is to BLUSH",
# "Sneezy's specialty is to SNEEZE",
# "Dopey's specialty is to GOOF",
# "Doc's specialty is to CONTEMPLATE"]
#
def specialities(characters)
  # initialize empty array
  result = []

  #iterate through characters
  characters.each do |character_hash|
    phrase = character_hash[:name]+"'s specialty is to " + character_hash[:specialty].upcase
    result << phrase
  end

  return result

end

#p specialities(characters)
#
# You are given an array of String objects, stored in a variable called my_strings. You want to use this array to return the String that has the longest length. (In a tie, it should return the first String with the longest length).

def longest_length(my_strings)

  if my_strings.length == 0
    return nil
  else
    # initialize longest
    longest_string = ""
    array = []

    #iterate through my_strings
    my_strings.each do |string|
      if string.length >= longest_string.length
        longest_string = string
        array << string
      end
    end

  end
  return longest_string

end

p longest_length(["aaaa5", "bbb4", "ccccc6", "dd3", "eeeee6"])
#p longest_length([])