#This works but there's probably a better way. Will continue to research. 
# You will start by creating three arrays:

# An array that will contain student names
studentNamesArray = [] 

# An array that will store student ID numbers
studentIdNumbersArray = []

# An array that will contain student email addresses
studentEmailAddressesArray = []

# # Write a times loop that asks the user to enter in 5 student names (first and last name) and store those values in the first array in all uppercase even if the information is not entered by the user in uppercase.

5.times do 
  puts "Please enter a student's first and last name" 
  studentName = gets.chomp.upcase
  #pushing name into student name array 
  studentNamesArray.push(studentName)
end 

# Write a times loop to generate random student ID numbers from 111111 to 999999 and put these values to the student ID number array.
studentNamesArray.length.times do 
  studentidNumber = rand(111111..999999)
  #check if id last three digits are less than 100 
  #convert id number to string and extract the last three digits 
  studentIDLastThreeDigits = studentidNumber.to_s[3..5]
  #check if last three are less than 100 (conver to integer). Generate new Id if so. 
  if studentIDLastThreeDigits.to_i < 100
    studentidNumber = rand(111111..999999)
  end 
  
  #check for duplicates and create new id while duplicate  
  if studentIdNumbersArray.include?(studentidNumber)
    studentidNumber = rand(111111..999999)
  end 

  #pushing student ID Number to Student ID Number Array 
  studentIdNumbersArray.push(studentidNumber)
 end 
 
 #Creating array of last three numbers of each ID 
 lastThreeDigitsArray =  []
 studentIdNumbersArray.each do |id|
   lastThreeDigitsArray.push(id.to_s[3..5])
 end 

 
# Creating array of first initials 
studentFirstInitialsArray = []
studentNamesArray.each do |name| 
  studentFirstInitial = name.slice(0)
  studentFirstInitialsArray.push(studentFirstInitial)
end 


#Creating array of last names 
studentLastNamesArray = []
studentNamesArray.each do |name| 
  #splitting names by space and pushing last word for name to last name array 
  studentLastName = name.split(" ").last
  studentLastNamesArray.push(studentLastName)
end 


# Write a times loop to generate student email addresses in the format: (first inital)+(last name)+(last 3 digits of student ID number)@adadevelopersacademy.org
#Create a new array joining together the other arrays? Use Zip?
#Iterate over the other arrays and push to email array?
studentInformationJoinedArray = []
  #use zip method to join three arrays 
  studentInformationJoinedArray = studentFirstInitialsArray.zip(studentLastNamesArray, lastThreeDigitsArray)

  #iterate over joined arrays for email address info 
  
studentInformationJoinedArray.each do |entry|
  studentEmailAddressesArray.push(entry.slice(0) + entry.slice(1) + entry.slice(2) + "@adadevelopersacademy.org")
end 

puts studentEmailAddressesArray
