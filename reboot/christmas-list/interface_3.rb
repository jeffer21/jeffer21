# scraping_etsy.rb
require "open-uri"
require "nokogiri"
require_relative 'suggestions.rb'
puts "Welcome to you Christmas giftlist"

running = true
gifts = []

# [{ name: "shoes", status: true}, { name: "shoes", status: true}]

while running
  # ask the user for his input
  puts "What do you want to do? [list|add|delete|mark|suggestions|quit]"
  # check the user input
  input = gets.chomp
  # do the action
  case input
  when "list"
    display_list(gifts)
  when "add"
    puts "What do you want to add?"
    new_present = gets.chomp.downcase
    gifts << { name: new_present, status: false}
    # gifts[new_present] = false
    # gifts << new_present unless gifts.include?(new_present)
  when "delete"
    display_list(gifts)
    puts "---"
    puts "What do you want to delete?"
    index = gets.chomp.to_i - 1
    deleted = gifts.delete_at(index)
    puts "#{deleted[:name]} has been removed" if deleted
  when "mark"
    display_list(gifts)
    puts "What did you buy?"
    index = gets.chomp.to_i - 1
    gift = gifts[index]
    gift[:status] = !gift[:status]
  when "quit"
    puts "See you next time ..."
    running = false
  when "suggestions"
    gift = scraping
    gifts << gift
    puts "#{gift[:name]} has been added"

  else
    puts "Invalid input"
  end
end




################### SCRAPING  ###############
# 1. Create a new action "suggestions"
# 2. Ask the user what he wants to search
# 3. use the user input to scrape ETSY.
# 4. display the results
