# Pseudocode
# make hash
# Ask questions
# take some name
# take some age
# take number of children
# take decor theme
# kick some ass

# output all their inputs
# ask for edits
# if they say yes, take their new input and replace 
# their old input then print and exit program.
# If not exit the program.

def take_input
	user_info = {}
	puts "What is the name of the client?(Enter a name)"
	user_info[:name] = gets.chomp

	puts "What is the age of client #{user_info[:name]}"
	user_info[:age] = gets.chomp
	user_info
end


puts take_input;