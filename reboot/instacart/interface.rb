require_relative 'instacart.rb'
# Print a list of Grocery Items
  # - Name
  # - Price
  # - Quantities [Stock](?)
# Ask user what to purchase
# Store request from.
  # Determine if the item is valued
  # Determine user pick by number or name
# Calculate
# Print out receipt alone with FINAL Sum of item prices

# item = %w(bread, chicken, fish, spinach)
# cart = []
# puts "Welcome to the mart"
# puts "Please select an item: #{item[0].upcase} #{item[1].upcase} #{item[2].upcase} #{item[3].upcase}"
# print ">"
# cart << gets.chomp
# until cart[-1] == "Q"
#   puts "Please select another item: #{item[0].upcase} #{item[1].upcase} #{item[2].upcase} #{item[3].upcase} or type 'Q' to quit"
#   print ">"
#   cart << gets.chomp
# end

# puts "This is your order #{cart[0...-1]}"


# Print a list of Grocery store
  # - Name
  # - Price
  # - Quantities [Stock](?)
# Ask user what to purchase
# Store request from.
  # Determine if the item is valued
  # Determine user pick by number or name
# Calculate
# Print out receipt alone with FINAL Sum of item prices

# item = %w(bread, chicken, fish, spinach)
# cart = []
# puts "Welcome to the mart"
# puts "Please select an item: #{item[0].upcase} #{item[1].upcase} #{item[2].upcase} #{item[3].upcase}"
# print ">"
# cart << gets.chomp
# until cart[-1] == "end"
#   puts "Please select another item: #{item[0].upcase} #{item[1].upcase} #{item[2].upcase} #{item[3].upcase} or type end"
#   print ">"
#   cart << gets.chomp
# end

# puts "This is your order #{cart[0...-1]}"


store = {
  "bread" => {"price" => 200, "stock" => 0},
  "milk"  => {"price" => 200, "stock" => 2},
  "fish" => {"price" => 200, "stock" => 2}
}

# Redefine as a Hash along with prices of store

puts "Welcome to Instacart! Please choose from the following store:"
store.each do |item, price, stock|
  puts "#{item.capitalize} - #{item['price']} - stock #{item['stock']}"
end


puts "Type 'Q' to Quit."

cart = []

print ">"
purchase = gets.chomp.downcase

until purchase.upcase == 'Q'
  if store.has_key?(purchase)
    until purchase.upcase == 'Q'
      if store.has_key?(purchase)
        cart << purchase
        puts "#{purchase.capitalize} added to the cart, Please enter another item or press Q to quit"
        print ">"
        purchase = gets.chomp.downcase
      end
    end
  else
    puts "#{purchase.capitalize} is not an available item. Please enter another."
    print ">"
    purchase = gets.chomp.downcase
  end
end
puts "Thank you for using Instacart. Your store included: "

cart.each do |item| puts "#{item} - #{store[item]}"
end

total = cashier(cart, store)

puts total
