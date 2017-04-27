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
	puts "What is the name of the client? (Enter a name)"
	user_info[:name] = gets.chomp

	puts "What is the client's gender? (Enter M or F)"
	user_info[:gender] = gets.chomp


	puts "What is the age of client #{user_info[:name]}? (Enter a number)"
	user_info[:age] = gets.chomp

	puts "How many children does #{user_info[:name]} have? (Enter a number)"
	user_info[:children_count] = gets.chomp

	if user_info[:gender] == "M"
		puts "What decor theme does Prince #{user_info[:name]} wish to encorporate?"

	user_info
end


puts take_input;