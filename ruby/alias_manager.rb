# Pseudocode
# swap first and last name

# Pseudocode
# Have a variable with the vowels
# Have a variable with the consonants
# Take in first-last reversed name
# deal with edge cases

def swap_first_last(name) 
	new_name = name.split(" ").reverse.join(" ")
	return new_name
end

def change_characters(new_name)
	vowels = "aeiou"
	consonants = "bcdfghjklmnpqrstvwxyz"
	split_name = new_name.split(" ")
	first_half = split_name[0].split("")
	second_half = split_name[1].split("")

	p first_half
end
puts change_characters("Chang yun")