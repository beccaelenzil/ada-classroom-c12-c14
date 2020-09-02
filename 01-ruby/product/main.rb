require_relative "product"

tonic = Product.new(
  "Dr. Flemington's cure-all tonic", 
  10
)
tonic.sell(3)
puts "#{tonic.name}: #{tonic.quantity_sold} sold, #{tonic.quantity_in_stock} in stock"

chair = Product.new("Professor Nimble's easy-spin swivel chair", 0)

chair.sell(5)

puts "#{chair.name}: #{chair.quantity_sold} sold, #{chair.quantity_in_stock} in stock"