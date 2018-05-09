#Create an array to store 5 names. Have the user enter in the 5 names and then print out the 5 names in all UPPERCASE all on the same line. Note that the user may not enter all the names in uppercase.
names = []
5.times do 
  puts "Enter a name"
  name = gets.chomp.upcase 
  names << name 
end 

puts names.join(", ")


#Create an array to store 3 boolean values entered in by the user. Print out YES if all the values are true and NO if at least one value is false. Hint: Prompt the user to enter true or false, and accept those values using gets. Since gets will give us back a string (instead of the boolean values we want) use if statements to convert those strings to boolean values.

boolean_array = []
3.times do 
  puts "Enter true or false"
  entry = gets.chomp.downcase 
  if entry == "true"
    boolean_array << true 
    elsif entry == "false"
    boolean_array << false 
  else 
    puts "Invalid entry. Please enter true or false"
    entry = gets.chomp.downcase
  end 
end 

if boolean_array.include?(false)
  puts "No".upcase
else 
  puts "Yes".upcase 
end 


#Create an array to store the following words: firetruck, fire drill, fire hydrant, firefighter, fireproof, fire station, fire hose. Then write code that uses the array to print out truck, drill, hydrant, fighter, proof, station, hose without modifying the array.
fire_array = ["firetruck", "fire drill", "fire hydrant", "firefighter", "fireproof", "fire station", "fire hose"]

puts fire_array[0].slice(4..-1)
puts fire_array[1].slice(5..-1)
puts fire_array[2].slice(5..-1)
puts fire_array[3].slice(4..-1)
puts fire_array[4].slice(4..-1)
puts fire_array[5].slice(5..-1)
puts fire_array[6].slice(5..-1)

#Create an array to store the amount of money spent on 4 people during the Holidays. Have the user enter in the amount spent on each person. Print the total spent on all the people. Total money spent should be displayed with a dollar sign, decimal point, and only 2 digits after the decimal.
money_array = []
4.times do 
  puts "How much money did you spend?"
  money = gets.chomp.to_f
  money_array << "$%0.2f" % money
end 

puts money_array





#Create an array to store 5 random numbers (between 1 and 10, including both 1 and 10) generated by the computer. Print out the square of each of the elements in the array.
random_squares_array = []
5.times do 
  random_number = rand(1..10)
  random_squares_array << random_number * random_number
end 


#Create an array to store 5000 decimal numbers. Randomly generate numbers from between 0 – 1 (including 0, but not including 1) to fill the array. Calculate and print the mean of all the elements in the array.
decimal_number_array = []
5000.times do 
  decimal_number_array << rand
end 

puts decimal_number_array.inject{ |sum, el| sum + el }.to_f / decimal_number_array.size


#Create an array of people that are invited to a party. Allow the user to ask if a certain person is invited to the party. If the person is on the invitation list respond INVITED otherwise respond NOT INVITED.
invited = ["Cassy", "Ford", "Joe", "Jane"]
puts "Please enter the name of the person you'd like to check for an invitation"
invited_name_check = gets.chomp.capitalize 

#Checking if person is invited 
if invited.include?(invited_name_check)
  puts "INVITED"
else 
  puts "NOT INVITED"
end 


Have the user enter in a sentence. Then, using an array, store the frequency of each letter of the alphabet from the sentence. Print out the frequency of each letter. Do not count uppercase and lowercase letters differently.
def letter_frequency
  puts "Enter a sentence"
  sentence = gets.chomp.downcase 
  letters = Hash.new(0)
  letters = sentence.each_char.reduce(letters) { |h, c| h[c] +=1; h  }
  puts letters
end 

letter_frequency

