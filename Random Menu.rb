foods = [
  "shrimp",
  "apples",
  "squid",
  "sushi",
  "sashimi",
  "cauliflower",
  "salmon",
  "oysters",
  "salami",
  "zucchini",
  "avacodo",
  "tomatoes"
  ]
  
puts "How many menu items would you like to see? I suggest 10 but it's up to you."
numberOfItems = gets.chomp.to_i 
if numberOfItems > 10 
  puts "Please enter a number less than 10."
elsif numberOfItems >=1 && numberOfItems <=10 
  puts "Okay! let's do #{numberOfItems}."
else 
  puts "Let's assume you said 10."
  numberOfItems = 10 
end 

puts "Your Random Menu:"
numberOfItems.times do
  randomFood = foods[rand(0..(foods.length))]
  puts "#{randomFood.capitalize}"
end 
