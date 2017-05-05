# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # Create an empty hash
  # separate the string of items
  # iterate through the array put each items in array as keys in the empty hash created above
  # set default quantity
  # print the list to the console
# output: hash
grocery_list = {}
def create_list(grocery_list,items)
  items = items.split(' ').each {|item| grocery_list[item] = 1}
  p grocery_list
end
create_list(grocery_list, "carrots apples cereal")
# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: adds item as key
# steps: if specified a quantity, add that as the value of the key. If not, have value of the key to be 1.
# output: Updated list with added item.
def add_item(grocery_list, item, quantity=1)
  grocery_list[item] = quantity
end
add_item(grocery_list, "pears")
p grocery_list
# Method to remove an item from the list
# input: list, item name
# steps: find the item inside the list
# steps: get rid of it
# output: updated list with removed item.
def remove_item(grocery_list, item)
  grocery_list.delete(item)
end
remove_item(grocery_list, "pears")
p grocery_list
# Method to update the quantity of an item
# input: list, item name, new quantity
# steps: change the quantity of the item in the list.
# output: updated list.

# Method to print a list and make it look pretty
# input: list
# steps: iterate through the list and write each item with its quantity.
# output: grocery list with the quantity as well.