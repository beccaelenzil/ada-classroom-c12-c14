require_relative "user"

ada = User.new("Ada Lovelace", "ada@adadev.org", "Instructor")
puts ada.summary
ada.type = "Student"

