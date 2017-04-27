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

def ask_questions
	user_info = {}
	puts "What is the name of the client? (Enter a name)"
	user_info[:name] = gets.chomp

	puts "What is the client's gender? (Enter M or F)"
	user_info[:gender] = gets.chomp.downcase

	puts "What is the age of client #{user_info[:name]}? (Enter a number)"
	user_info[:age] = gets.chomp

	puts "How many children does #{user_info[:name]} have? (Enter a number)"
	user_info[:children_count] = gets.chomp

	if user_info[:gender] == "m"
		puts "What decor theme does Prince #{user_info[:name]} wish to encorporate?"
		user_info[:decor_theme] = gets.chomp
	else
		puts "What decor theme does Princess #{user_info[:name]} wish to encorporate?"
		user_info[:decor_theme] = gets.chomp
	end

	puts user_info

	puts "Yea wanna edit any of the above information? If not, just type 'none' (Enter name of the Key you wish to edit Ex.'decor_theme')"
	edit_want = gets.chomp.downcase.to_sym
	
	if edit_want == :none
		puts "if statement"
	else
		puts "Type your new change for the #{edit_want} field"
		user_info[edit_want] = gets.chomp 
	end
	user_info[:age] = user_info[:age].to_i
	user_info[:children_count] = user_info[:children_count].to_i
	return user_info
end

puts ask_questions