# binary search ITERATIVE
#
def binary_search(collection, value)
  # Low is set to index of first item in collection
  # High is set to the last index
  low = 0
  high = collection.length - 1

  # iterate in a while loop
  # checking condition to stop if low greater than high
  # that condition will only be if item not in collection
  while low <= high
    # mid is set to (low plus high) divided by 2
    mid = (low + high) / 2
    if collection[mid] > value
      # check if mid is greater than value (value is in lower half)
      high = mid - 1
    elsif collection[mid] < value
      # check if mid less than value (value is in upper half)
      low = mid + 1
    else
      # return mid because it is the value if prev is false
      return collection[mid]
    end
  end

  # return an out of bounds index to indicate that value was not found
  return "not_found"
end

 my_array = []
(0...1000).each do |x|
  my_array.push(x)
end
puts binary_search(my_array, 5)
