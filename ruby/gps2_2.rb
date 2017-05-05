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
  p grocery_list
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
