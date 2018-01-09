# HEAP SORT
#
# best case O(n)
# worst case O(n log n) .. better than quicksort
# ave case O(n log n)
#
# turn array into binary heap structure
# repeatedly remove the max element from heap
# and place back into array
#
# method heapify(a,count) is
#    (start is assigned the index in a of the last parent node)
#    start = (count - 2) / 2
#
#   while start ≥ 0 do
#       (sift down the node at index start to the proper place
#        such that all nodes below the start index are in heap
#        order)
#       siftDown(a, start, count-1)
#       start = start - 1
#   (after sifting down the root all nodes/elements are in heap order)
#
# method siftDown(a, start, end) is
#    (end represents the limit of how far down the heap to sift)
#    root = start
#
#    while root * 2 + 1 ≤ end do       (While the root has at least one child)
#       child = root * 2 + 1           (root*2+1 points to the left child)
#       (If the child has a sibling and the child's value is less than its sibling's...)
#       if child + 1 ≤ end and a[child] < a[child + 1] then
#          child = child + 1           (... then point to the right child instead)
#       if a[root] < a[child] then     (out of max-heap order)
#          swap(a[root], a[child])
#          root = child                (repeat to continue sifting down the child now)
#       else
#         return

class Array
  def heapsort
    self.dup.heapsort!
  end

  def heapsort!
    ((length - 2) / 2).downto(0) {|start| siftdown(start, length - 1)}

    (length - 1).downto(1) do |end_|
      self[end_], self[0] = self[0], self[end_]
      siftdown(0, end_ - 1)
    end
    self
  end

  def siftdown(start, end_)
    root = start
    loop do
      child = root * 2 + 1
      break if child > end_
      if child + 1 <= end_ and self[child] < self[child + 1]
        child += 1
      end
      if self[root] < self[child]
        self[root], self[child] = self[child], self[root]
        root = child
      else
        break
      end
    end
  end
end

# test in irb
# ary = [7, 6, 5, 9, 8, 4, 3, 1, 2, 0]
# should return => [7, 6, 5, 9, 8, 4, 3, 1, 2, 0]
# ary.heapsort
# should return => [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
