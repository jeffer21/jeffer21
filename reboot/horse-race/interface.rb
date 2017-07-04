# Say welcome
# Create an array of horses in the race
  # - Two ways to approach it:
    #(1) Horse are provided (horses = %w(moe curly larry))
    #(2) User provide 3 horses. (horses = [] << Horses)
# user to place a bet
# randomly pick a horse for each game (.shuffle / last)  or (sample)
# Comparason between the horse they chose and which horse was selected
# inform the user if he or she has one
# horses = %w(moe curly larry)
# puts "Welcome to the horse race! Today's Horse are #{horses[0].upcase}, #{horses[1].upcase}, or #{horses[2].upcase}"
# puts "Please select a horse? #{horses}"
# print ">"
# user_choice = gets.chomp.downcase
# result = horses.sample.capitalize
# winner_msg = "You guess #{user_choice} and #{result} has won!!!"
# if user_choice == result
#   puts "You win!" + winner_msg
# else
#   puts "You lose!" + winner_msg
# end

horses = []
puts "Please provide 3 horses to bet on"
for x in (1..3)
  print ">"
  horses << gets.chomp.downcase
end
puts "Welcome to the horse race! Today's Horse are #{horses[0].upcase}, #{horses[1].upcase}, or #{horses[2].upcase}"
puts "Please select a horse? #{horses}"
print ">"
user_choice = gets.chomp.downcase
result = horses.sample.downcase
winner_msg = "You guess #{user_choice.upcase} and #{result.upcase} has won!!!"
if user_choice == result
  puts "You win!" + winner_msg
else
  puts "You lose!" + winner_msg
end
