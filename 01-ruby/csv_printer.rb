# csv_printer.rb
require 'csv'

while true
  puts "What file would you like to print?"
  filename = gets.chomp

  begin
    CSV.read(filename).each do |line|
      puts line.join(",")
    end

  rescue SystemCallError => my_exception
    puts "Could not open file: #{my_exception.message}"

  end

  puts "Would you like to go again?"
  break if gets.chomp != "yes"

end