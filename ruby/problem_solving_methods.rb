arr = [3, 5, 7, 10]

def search_array(array, value)
  x = 0
  while x < array.length
  if array[x] == value
    return x
  end
  x += 1
  end
return nil 
end

# p search_array(arr, 7)


def fibonacci(n)
	if n == 1
		0
	elsif n == 2
		1
	else
		fibonacci(n-1) + fibonacci(n-2)
	end
end


def array_maker(length)
	new_array = []
	x = 1
	while x < length
		new_array.push(fibonacci(x))
		x += 1
	end
	return new_array
end





			




