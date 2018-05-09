# * If the password contains a number and a symbol (@, %, \*, or !) and contains 8 or more characters then accept the password and congratulate the user, if not make them reenter the password until they enter an acceptable password. Optional = check for lowercase and uppercase letters. Let user know what they did wrong. 

# * Prompt a user for input (for a new password)
puts "Enter your password"

# * Read in the proposed Password to a variable
password = gets.chomp



def password_validation(password)
  #Add to issues string as issues are found 
  issues = "Your password is missing:"
  #Ask user to enter password again
  puts "Please enter your password again."
  password_verify = gets.chomp 
  while password_verify != password 
    puts "Those passwords do not match. Please reenter your password."
    password_verify = gets.chomp
  end  
  
    #Check if password has a number 
  if password !~ /\d/
    #Set has number to false 
    has_number = false 
    issues += "\n a number"
  else 
    has_number = true 
  end 
  
  #Check if password has a symbol 
  if password !~ /[@#$^&*%\!]/
    #Set has symbol to false 
    has_symbol = false 
    #Add to issues 
    issues += "\n a symbol "
  else 
    has_symbol = true 
  end 
  
  #Check if password has uppercase 
  if password !~ /[A-Z]/
    #Set has uppercase to false 
    has_uppercase = false 
    #Add to issues 
    issues += "\n a uppercase letter"
  else 
    has_uppercase = true 
  end 
  
  #Check if password has lowercase 
  if password !~ /[a-z]/
    #Set has lowercase to false 
    has_lowercase = false 
    #Add to issues 
    issues += "\n a lowercase letter"
  else 
    has_lowercase = true 
  end 
  
  #Check password length is at least 8 
  if password.length < 8 
    #Set has length to false 
    has_length = false 
    #Add to issues 
    issues += "\n must be at least 8 chracters"
  else 
    has_length = true 
  end 
    
  #Checking for issues. Returning Accepted if no issues.
  if has_number && has_symbol  && has_uppercase  && has_length && has_lowercase
    puts "Accepted"
  else 
    puts issues
  end 
end 



password_validation(password)

