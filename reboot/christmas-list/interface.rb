# Greetings
# Display the menu [list|Add|delete|quit]
# Menu should loop.

user_input = ""
user_options = ["list", "add", "delete", "quit"]
gift = []
puts "Welcome to your Christmas giftlist!"

until user_input.downcase == "quit"
  puts "Which action: #{user_options[0]} | #{user_options[1]} | #{user_options[2]} | #{user_options[3]} | #{user_options[4]}"
  print ">"
  user_input = gets.chomp.downcase
  # if user_input.downcase == "list"
  #   puts "TODO: list items"
  # elsif user_input.downcase == "add"
  #   puts "TODO: ask user an item and add it to giftlist"
  # elsif user_input.downcase == "delete"
  #   puts "TODO: ask user the index of item to delete and delete it"
  # else
  #   puts "Invalid Selection"
  # end
  case user_input
  when "list"
    puts "Here is the list"
    gift.each_with_index do |item, index|
      puts "#{index + 1}. #{item.capitalize}"
    end
  when "add"
    puts "What do you want to add?"
    add_item = gets.chomp
    gift << add_item.downcase unless gift.include?(add_item)
  when "delete"
    gift.each_with_index do |item, index|
      puts "#{index + 1}. #{item.capitalize}"
    end
    puts "which one do you want to delete?"
    remove = gets.chomp.downcase
    if gift.delete(remove)
      puts "#{remove.capitalize} has been deleted"
    else
      puts "#{remove.capitalize} is not on the list."
    end
  end
end
puts "Goodbye"


######### ADD #######################
#create an empty list at first []
#store it in a variable
# Ask the user what gift he/she wants to add
#store his inputs into the array

###############List################
# iterate on the array gifts
# display  each elements like ""




##################Delete###################
# Display all the gifts
# ask him which one
# get the user inputs
# delete it from array


######################### MARK as Bought######################
# Add a new action, mark,
# add a new action in the case statement
# list item of gifts
# ask the user which gift has been Bought
# get input
# update value in the hash



