def coffee_price(type, size, extra_shots, cold)
  # Find the base price for this drink
  case type
  when :drip
    price = 1.5
  when :latte
    price = 3.7
  when :cappuccino
    price = 3.2
  else
    puts "Invalid coffee type: #{type}"
    return
  end

  # Modify for size
  case size
  when :tall
    # No change
  when :grande
    price *= 1.3
  when :venti
    price *= 1.6
  else
    puts "Invalid size: #{size}"
    return
  end

  # Charge for extra shots
  price += extra_shots * 0.5

  # Charge for a cold drink
  if cold
    price += 1
  end

  return price
end

price = coffee_price(:latte, :venti, true, 2)
puts "Your total is #{price} dollars"