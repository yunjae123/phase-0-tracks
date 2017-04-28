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

def name_scarmbler(name)
	vowels = ["a","e","i","o","u"]
	consonants = ["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z"]
	new_name = []
	name_array = name.split("")

	x = 0
	while x < name_array.length
		if vowels.index(name_array[x]) != nil
			if name_array[x] == "u"
				new_name.push("a")
			else
				new_place = vowels.index(name_array[x]) + 1
				new_name.push(vowels[new_place])
			end
		else
			if name_array[x] == "z"
				new_name.push("b")
			else
				new_place = consonants.index(name_array[x]) + 1
				new_name.push(consonants[new_place])
			end
		end
		x += 1
	end
	new_name.join("")
end

puts name_scarmbler("auy")