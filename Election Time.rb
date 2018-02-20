# You are going to create an electronic election program that tracks votes, total votes, and determines a winner.

# Primary Requirements
# Create an election program that accepts input from the user and outputs the winner of the election

# Input: Poll 10 people for their election vote
# Output: Print the total votes cast as well as the winner of the election

# Optional Enhancements
# Some of these enhancements are better solved after having knowledge from lesson 12, so you can try some and then come back and do others after lesson 12.

# Handle ties for a winner appropriately
# Handle grammar of vote summary saying vote or votes appropriately
# Handle write in votes
# Consider how to handle more than 10 votes
# Consider how to handle more than 3 candidates
# Refactor your code so that your code is DRY (Don't Repeat Yourself)



#Input - Toll 10 people asking who they'd like to vote for 
#Create variable for vote number. 
#Create variable for vote. 
#Thoughts - 
#Do a times that pushes results into an array 
#Loop through array
#function to count votes for each 

puts "Welcome to my election voting program."
puts "Election candidates are Harry Potter, Albus Dumbedore, and Draco Malafoy "

#Array to hold results 
Results = []
#Getting 10 votes with a for loop 
for i in 1..10 do 
  puts "Who would you like to vote for?"
  vote = gets.chomp.capitalize
  Results.push(vote)
end

#using a loop to count the results of each vote 
#Empty array to hold vote count 
voteNamesArray = []
voteCountArray = []
voteCount = Hash.new(0)
Results.each { |name| voteCount[name] += 1 }
winner = voteCount.max_by { |k, v| v}[0] 

#iterate over voteCount for key and value., push into array
voteCount.each do |key, value| 
  puts "#{key} has #{value} votes."
  end
  puts "The winner is " + winner + "."
  
  #Research how to convert value to integer so you can do an if statement 
  #to do votes vs vote/to find ties for max. 
  #Potentially try again with arrays. 
