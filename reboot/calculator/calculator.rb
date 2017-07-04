
  puts "Greetings."
  while 0 == 0 do
    puts "Please Input 1"
    print ">"
    num_one = gets.chomp.to_i
    puts "Please Input 2"
    print ">"
    num_two = gets.chomp.to_i
    puts "Please Choose an Operation [+] [-] [*] [/]"
    print ">"
    operation = gets.chomp

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

    puts "Your Result is #{results}"
    results = nil
  end

