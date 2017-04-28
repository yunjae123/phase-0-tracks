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

p search_array(arr, 7)