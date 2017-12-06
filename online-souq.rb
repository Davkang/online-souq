

items = ["old paperback book", "potato", "red onion", "dried lemon", "frankincense", "medicinal herbs", "saffron", "glass spice jar", "red fabric", "orange fabric", "handicrafts", "small persian rug", "medium persian rug", "large persian rug", "extra large persian rug"]


# Greet the user.

print "What is your name? "
name = gets.chomp

puts "Welcome #{name}!"
puts "Here is a list of items you can choose to buy!: "
items.each do |item|
  puts " #{item}"
end


# which items they would like to purchase

input = ""
# shopping_cart = Array.new
shopping_cart = []
not_listed = []

while true
  puts "What would you like to buy? (type FINISHED when you're done)"
  print "> "
  input = gets.chomp.downcase

  if input == "finished"
    break
  elsif items.include?(input)
    shopping_cart << input
  else

    puts "Sorry, that item is not in our store yet!"
    not_listed << input

  end
end


# List the items
puts "#{name}, thanks for trying our online Souq platform. Here is a list of items in your cart!:"

shopping_cart.each do |item|
  puts "* #{item}"
end

puts "Btw, we noticed you tried entering in some items that aren't part of the online
Souq. We don't have the following items yet but will let you know if they show
up!: "

not_listed.each do |item|
  puts "* #{item}"
end
