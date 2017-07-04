# Hello to the user
# Ask for Number 1
# Store the  Number into a variable  user Number 1
# Get user Number 2
# Store the  Number into a variable user Number 2
# DO the operation ("+") Get user Operation
# Compute results
# display / Return
# puts "Greetings."
# while 0 == 0 do
#   puts "Please Input 1"
#   print ">"
#   num_one = gets.chomp.to_i
#   puts "Please Input 2"
#   print ">"
#   num_two = gets.chomp.to_i
#   puts "Please Choose an Operation [+] [-] [*] [/]"
#   print ">"
#   operation = gets.chomp

#   case operation
#   when "+"
#     results = num_one + num_two
#   when "-"
#     results = num_one - num_two
#   when "*"
#     results = num_one * num_two
#   when "/"
#     results = num_one * num_two
#   else
#     "Wrong input"
#   end

#   puts "Your Result is #{results}"
# end
require_relative "calculator"

def calculate(num_one, num_two, operation)
 case operation
    when "+"
      results = num_one + num_two
    when "-"
      results = num_one - num_two
    when "*"
      results = num_one * num_two
    when "/"
      results = num_one * num_two
    else
      "Wrong input"
    end
