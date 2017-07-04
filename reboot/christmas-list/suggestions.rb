# scraping_etsy.rb
require "open-uri"
require "nokogiri"

def scraping
  suggestions_list = []
  puts "What are you searching on Etsy?"
  article = gets.chomp

  # 1. We get the HTML file thanks to open-uri
  file = open("https://www.etsy.com/search?q=#{article}")
  # 2. We build a Nokogiri document from this file
  doc = Nokogiri::HTML(file)
  # 3. We search every elements with class="card" in our HTML doc
  doc.search(".card").each do |card|
  # 4. for each element found, we extract its title and print it
  title = card.search(".card-title").text.strip
  suggestions_list << title[0, 25]
  end
  suggestions_list[0,10].each_with_index do |suggested_item, index|
    puts "#{index + 1}. #{suggested_item}"
  end
  puts "What do you want to add?"
  user_suggest_pick = gets.chomp.to_i - 1
  return { name: suggestions_list[user_suggest_pick], status: false}
end

def display_list(list)
  list.each_with_index do |gift, index|
    bought = gift[:status] ? "[x]" : "[ ]"
    puts "#{index + 1}. #{bought} #{gift[:name]}"
  end
end
