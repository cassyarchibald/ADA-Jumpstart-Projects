#Setting random number 
correct_number = rand(0...1000)

#Asking user to guess number 
puts "Guess what number i'm thinking of between 0 and 999"
begin
  guess = gets.chomp
  guess = Integer(guess)
rescue
  puts "Please enter a number for your guess."
  retry 
end 

#Setting number of guesses to start at 1 
guess_Number = 1

until guess == correct_number
  #print higher if they need to guess higher 
  if guess < correct_number
    puts "higher".upcase
  else 
    #print lower if they need to guess lower 
    puts "lower".upcase
  end 
  #Add one to the number of guesses 
  guess_Number += 1 
  #Have user guess again 
  puts "Guess again :)"
  begin
    guess = gets.chomp
    guess = Integer(guess)
  rescue
    puts "Please enter a number for your guess."
    retry 
  end 
end 

#Showing results 
puts "You got it in #{guess_Number} tries!".upcase
