# Pseudocode
# swap first and last name

# Pseudocode
# Have a variable with the vowels
# Have a variable with the consonants
# Take in first-last reversed name
# deal with edge cases
# change letters as instructed
# shoot out new word

# Pseudocode 
# Perform last two methods inside and spew out new names
# Join them together

def swap_first_last(name) 
	new_name = name.split(" ").reverse.join(" ")
	return new_name
end	

def name_scarmbler(name)
	vowels = ["a","e","i","o","u"]
	consonants = ["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z"]
	new_name = []
	name_array = name.downcase.split("")

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
	return new_name.join("")
end

def alias_manager(first_last)
	new_name = swap_first_last(first_last).split(" ")
	first_name = new_name[0]
	last_name = new_name[1]

	new_first = name_scarmbler(first_name)
	new_last = name_scarmbler(last_name)
	upcased_first = new_first.slice(0).upcase + new_first.slice(1..-1)
	upcased_last = new_last.slice(0).upcase + new_last.slice(1..-1)

	return upcased_first + " " + upcased_last
end
p alias_manager("Yun chang")