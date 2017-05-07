class TodoList

	def initialize(todolist)
		@todo_list = todolist
	end

	def get_items
		@todo_list
	end

	def add_item(item)
		@todo_list.push(item)
	end

	def delete_item(item)
		@todo_list.delete(item)
		@todo_list
	end

	def get_item(index)
		@todo_list[index]
	end

end
test = TodoList.new(["test1", "test2"])
p test.add_item("test3")
p test.get_items
p test.delete_item("test2")
p test.get_item(0)

# In phase-0-tracks/ruby/list, you'll find a test file for a TodoList class. 
# The class itself isn't anything fancy -- it basically maintains an internal 
# array attribute and provides methods that allow the array to be accessed and updated in various ways.

# Run the tests. Resolve any errors you see and add code that will make all of the tests pass. 
# Work on one test at a time until you've made it all the way to "green" (all tests passing).
