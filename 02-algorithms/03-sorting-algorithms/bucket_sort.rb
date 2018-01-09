# BUCKET SORT
# Worst case O(n^2)
# Best case Theta(n + k)
# Ave case Omega(n+k)
# Performs best with memory usage is not an issue
# and elements are expected to be fairly evenly distributed.
#
# set up array of initially empty buckets
# go over original array, putting each object in a separate bucket
# sort each non-empty bucket
# visit buckets in order and put all elements back into array
#
class Array
  def bucketsort
    n = @array.length-1
    m = 100
    buckets = Array.new(m)
    for j in 0...m do
      buckets[j] = 0
    end
    for i in 0...n do
      buckets[@array[i]] += 1
    end
    i = 0
    for j in 0...m do
      for k in 0...buckets[j]
        @array[i] = j
        i += 1
      end
    end
    @array
  end
end

# irb test
# ary = [7, 6, 5, 9, 8, 4, 3, 1, 2, 0]
# should return => [7, 6, 5, 9, 8, 4, 3, 1, 2, 0]
# ary.bucketsort
# should return => [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]


