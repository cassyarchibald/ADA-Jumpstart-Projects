# input variables
name = ""
adjective = ""
noun = ""
verb = ""
color = ""
number = ""
animal = ""
sport = ""
town = ""
weather = ""

#program
print "What's your name?"
name = gets.chomp.capitalize
print "Enter an adjective:"
adjective = gets.chomp.downcase
print "Enter a noun:"
noun = gets.chomp.downcase
print "Enter a verb:"
verb = gets.chomp.downcase
print "What's your favorite color?"
color = gets.chomp.downcase
print "What's your  favorite number?"
number = gets.chomp.to_i
print "How about your favorite animal?"
animal = gets.chomp.downcase
print "What's your favorite sport?"
sport = gets.chomp.downcase
print "Enter a town:"
town = gets.chomp.capitalize
print "How's the weather?"
weather = gets.chomp.downcase

puts "Okay, ready for the MadLibs!"
print "#{name} saw a #{adjective} #{verb} #{color} #{animal} while on a walk in #{town}. The weather called for #{weather}. #{name} wanted to get home in time to watch #{sport} but needed to buy #{noun} and had #{number} miles left." 
