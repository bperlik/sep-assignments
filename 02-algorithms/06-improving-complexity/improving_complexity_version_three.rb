# SPACE COMPLEXITY OPTIMIZATION
# I tried to reduce memory usage by using
# ruby's bsearch (a C++ quick search)
# quick search has a better worst-case space complexity
# but the same average time complexity as merge sort.
require 'benchmark'

class Array
  def bsearched_ruby(*array)
    combined_array = []
    array.each do |array|
      combined_array += array
    end
    combined_array.sort!
  end
end
