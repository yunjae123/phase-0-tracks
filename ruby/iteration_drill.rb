# Array Drills

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

# 1. Iterate through the zombie_apocalypse_supplies array,
# printing each item in the array separated by an asterisk
# ----
def print_items(array) 
	new_array = [];
	x = 0
	while x < array.length
		new_array.push(array[x])
		x += 1
	end
	new_array.join(" * ")
end
# p print_items(zombie_apocalypse_supplies)


# 2. In order to keep yourself organized, sort your zombie_apocalypse_supplies
# in alphabetical order. Do not use any special built-in methods.
# ----
def alphabetize(array)
	letters = "abcdefghijklmnopqrstuvwxyz".split("")
	new_array = []
	x = 0
	y = 0
	while x < letters.length
		while y < array.length
			if letters[x] == array[y].slice(0).downcase
				new_array.push(array[y])
			end
			y += 1
		end
		x += 1
		y = 0
	end
	return new_array
end
# p alphabetize(zombie_apocalypse_supplies)


# 3. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies. Do not use any special built-in methods.
# For instance: are boots in your list of supplies?
# ----
def item_included(string, array)
	x = 0
	while x < array.length
		if array[x].downcase == string.downcase
			return true
		end
		x += 1
	end
	return false
end
# puts item_included("cb radIO", zombie_apocalypse_supplies)


# 4. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5. Do not use any special built-in methods.
# ----
def remove_til5(array)
	x = array.length
	until x <= 5
		array.pop()
		x -= 1
	end
	return array
end
puts remove_til5(zombie_apocalypse_supplies)


# 5. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.
zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]
other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
                            "solar battery", "flashlight"]
# ----
def combine_supply(arr1, arr2)
	new_array = arr1 + arr2
	unique_array = new_array.uniq
	return unique_array
end
p combine_supply(other_survivor_supplies, zombie_apocalypse_supplies)


# Hash Drills

extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Iterate through extinct_animals hash, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.
# ----

# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000. Do not use any special built-in methods.
# ----

# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# so they accurately reflect what year the animal went extinct.
# Do not use any special built-in methods.
# ----

# 4. You've heard that the following animals might be extinct, but you're not sure.
# Check if they're included in extinct_animals, one by one:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Do not use any special built-in methods.
# ----

# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find the built-in method that helps you accomplish this in the Ruby documentation
# for Hashes.
# ----
