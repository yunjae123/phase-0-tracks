# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # Create an empty hash
  # separate the string of items
  # iterate through the array put each items in array as keys in the empty hash created above
  # set default quantity
  # print the list to the console
# output: hash

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: adds item as key
# steps: if specified a quantity, add that as the value of the key. If not, have value of the key to be 1.
# output: Updated list with added item.

# Method to remove an item from the list
# input: list, item name
# steps: find the item inside the list
# steps: get rid of it
# output: updated list with removed item.

# Method to update the quantity of an item
# input: list, item name, new quantity
# steps: change the quantity of the item in the list.
# output: updated list.

# Method to print a list and make it look pretty
# input: list
# steps: iterate through the list and write each item with its quantity.
# output: grocery list with the quantity as well.

grocery_list = {}
def create_list(grocery_list, items)
  items.split(' ').each {|item| grocery_list[item] = 1}
end

def add_item(grocery_list, item, quantity=1)
  grocery_list[item] = quantity
end

def remove_item(grocery_list, item)
  grocery_list.delete(item)
end
####### Repetitive 
# def update_quantity(grocery_list, item, quantity)
# 	grocery_list[item] = quantity
# end
# update_quantity(grocery_list, "apple", 50)

def print_list(grocery_list)
	grocery_list.each { |item, quantity| puts "You have #{quantity} #{item}(s)!" } 
end



create_list(grocery_list, "carrot apple cereal")
add_item(grocery_list, "pears")
p grocery_list
remove_item(grocery_list, "pears")
p grocery_list
print_list(grocery_list)


## REFLECTION
# I learned that by pseudocoding beforehand really helps
# to give you a solid gameplan on how to approach 
# the problem. 
# The trade offs for using hashes instead of arrays 
# is that with a hash, you can store a value with
# a key for times your input can have deeper meaning
# than just the value itself.
# Arrays, you can easily just store as values.
# A method returns any value you specify it to return
# at the bottom of the method.
# You can pass any objects into a method.
# Objects can arrange from strings, all the way to
# hashes.
# You can make a method return a chunk of information
# in which you can then use that info for another method.
# Learning to manipulate scopes of variables were 
# learned very solidly in this GPS. Nothing was too confusing.
