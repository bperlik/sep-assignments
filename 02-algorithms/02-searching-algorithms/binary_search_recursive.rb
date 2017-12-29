# RECURSIVE binary search
# Basically the same as iterative
# except use recursively call to search
# in higher half and lower half
# and check for not in collection condition first
#
def binary_search(collection, value)
  low = 0
  high = collection.length
  if low >= high
    return "not found"
  end

  mid = (high / 2).ceil

  if collection[mid] == value
    return collection[mid]
  elsif collection[mid] < value
    binary_search(collection[(mid+1)...high], value)
  else
    binary_search(collection[low...mid], value)
  end
end

my_array = []
(0...1000).each do |x|
  my_array.push(x)
end
puts binary_search(my_array, 5)
