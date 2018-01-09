require 'benchmark'

require_relative 'bucket_sort.rb'
require_relative 'quick_sort.rb'
require_relative 'heap_sort.rb'

arr = Array.new(50){rand(1..250)}
#arr = Array.new(100000){rand(1..250000)}

Benchmark.bm do |bm|
  bm.report ('Quick Sort:  ') { arr.quicksort }
  bm.report ('Heap Sort:  ') { arr.heapsort }
  bm.report ('Bucket Sort: ') { arr.bucketsort }
end

