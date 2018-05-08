# Ask the user to enter the names, ages, and favorite colors of their closest friends (you may not assume that the user's close friends all have unique names). Output the total number of close friends under 18, followed by their names. Output the number of unique favorite colors, and then list them (Hint: Check out the uniq method of the Array class in Ruby). Your solution should use at least 1 hash and at least 1 array.

friend_overview = []

def friend_info(friend_overview)
    1.times do 
      #Getting user input
      puts "What's your friend's name?"
      name = gets.chomp.capitalize 
      #Making sure this is not left blank 
      until name.empty? == false 
        puts "Please enter your friend's name."
        name = gets.chomp.capitalize
      end 
      
      puts "What's your #{name}'s age?"
      #Making sure user enters a number 
      begin
        age = gets.chomp
        age = Integer(age)
      rescue 
        puts "Please enter a number for #{name}'s age."
        retry
      end 
      
      puts "What #{name}'s favorite color?"
      color = gets.chomp.capitalize
      #Making sure this is not left blank 
      until color.empty? == false 
      puts "Enter #{name}'s favorite color."
      color = gets.chomp.capitalize
      end 
      
      #Storing user input in a hash
      friend_hash = {
        name: name,
        age: age,
        color: color
      }
      
      #Pushing hash to array 
      friend_overview << friend_hash
      
      #Checking if there's another friend to add 
      puts "Would you like to add another friend?"
      another_friend = gets.chomp.downcase
      #Making sure user enters yes or no 
      while another_friend != "no" && another_friend != "yes"
        puts "Please enter yes or no. Would you like to add another friend?"
        another_friend = gets.chomp.downcase
      end 
      #If yes, re-run the code to add another friend 
      redo if another_friend == "yes"
    end 
end 

#Calling the method 
friend_info(friend_overview)

#Output total number of friend uner 18 then their names 
#Creating an array to hold names under 18 
under_18_names = []
#Iterating through each hash to see if person is under 18 
friend_overview.each do |hash|
  #Checking if under 18 
  if hash[:age] < 18 
    #If so, name is pushed to under_18_names
    under_18_names << hash[:name]
  end 
end 

#Creating array of unique colors 
    unique_colors = friend_overview.map { |friend| friend[:color] }.uniq

#Showing how many friends are under 18 and their names 
  puts "#{under_18_names.length} friends are under 18 including #{under_18_names.join(", ")}"

puts "Favorite colors include #{unique_colors.join(", ")}."
