# QUICK SORT
#
# compares item to pivot point, moves each item according to pivot
# then repeats those steps for other side of collection

class Array
  def quicksort
    return [] if empty?

    pivot = delete_at(rand(size))
    left, right = partition(&pivot.method(:>))

    return *left.quicksort, pivot, *right.quicksort
  end
end

# my irb test
# quick = QuickSort.new

# puts quick.quicksort([1, 2, 3, 4, 5])
#  => [1, 2, 3, 4, 5]
# puts quick.quicksort([5])
# => [5]
# puts quick.quicksort([5, -5, 11, 0, 3])
# => [-5, 0, 3, 5, 11]
