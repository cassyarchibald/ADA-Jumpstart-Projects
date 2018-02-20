=begin
This challenge is to build a computer candy machine. You’ve got some money and you want to buy some candy. So, you go up to the candy machine, put in your money, select your candy, and then pick up your candy and your change. You can use gets.chomp to get input from the user without the extra newline at the end.

Requirements
Ask the user how much money they have, assume that the $ symbol is part of the prompt (the user doesn't have to enter it)
Display all candy options and their costs (even if the user cannot afford the candy)
Decide whether the user can afford the candy or not, if they can't, tell them so, if they can, calculate and display their change
[Optional] Handle when the buyer enters "C" or "c" so that it works as expected
[Optional] Do something appropriate when the buyer enters an invalid amount for the money and an invalid selection
=end 


puts "Hello, welcome to the candy machine. How much would you like to spend today?"
money = gets.chomp 
puts "Hmmm, you have $" + money +". Let's see what we have in stock."

#Thoughts - 
#Create an array for candy and an array for prices, then join with a loop?

Candy = ["Snickers", "Twix", "Chips", "Bubblegum", "Soda"]
Price = [1.5, 1, 2, 0.5, 1.25]

#Loop to display all candy and prices. 
i = 0
while i < Candy.length 
  candyName = Candy[i]
  candyPrice = Price[i].to_s
  puts candyName + ": $" + candyPrice
  i +=1
end 

#Asking user what they would like to buy 
puts "What would you like to purchase?"
purchase = gets.chomp.capitalize 

#First section tests to see if purchase is in stock 
#Second part finds index number of associated price by using index value of purchase
#Compares if user has enough money 

if Candy.include?(purchase.capitalize)
 puts "We have " + purchase.capitalize + " in stock" 
 #test if user can afford purchase 
 purchaseCost = Price[Candy.find_index(purchase)].to_f
  if purchaseCost  <= money.to_f
    #Calculating change 
    change = money.to_f - purchaseCost.to_f 
    #converting change to a string 
    change = change.to_s
    #returning change to user 
    puts "Great, you can afford that. Your change is S" + change +". Have a nice day!" 
    else 
    #Let user know they can't afford purchase
    puts "Sorry, you can't afford " + purchase +"."
  end 
else 
  puts "Sorry, we don't have " + purchase +" in stock."
  #if it does not exist, say so. 
end 
