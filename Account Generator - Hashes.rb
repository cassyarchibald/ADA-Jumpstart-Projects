# Utilize a single array variable to store all student information, instead of three individual arrays. This array will contain many hashes.

studentData = []

# Utilize a single loop to drive the hash population (you may have nested loops inside this loop for other functionality):
puts "How many students would you like to enter?"
entryNumbers = gets.chomp.to_i

entryNumbers.times do 
  #Create new student hash 
  student = Hash.new 
  # accept user input for the student's name
  puts "Enter the student's first and last name."
  studentName = gets.chomp.capitalize
  # generate random student ID
  randomID = rand(111111..999999)
  # generate student email address from previous pieces of data
  studentEmail = studentName[0] + studentName.split.last + "@adadevelopersacademy.org"
  #assigning values to student hash
    student = {
      name: studentName,
      ID: randomID,
      email: studentEmail
    }
  #pushing hash to studentData array
    studentData.push(student)
  end 

 # Update the printing functionality to utilize this new hash variable to print out student roster
studentData.each do |student|
  puts "Name: #{student[:name]} ID: #{student[:ID]} Email: #{student[:email]}"
end 
