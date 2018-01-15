# IMPROVING TIME COMPLEXITY
# I will try merge sort which has much better complexity.

# This method takes n arrays as input and combine them in sorted ascending order
require 'benchmark'

class Array
  def mergesort_ruby(*array)
    combined_array = []
    array.each do |array|
      for val in array
        if combined_array.length == 0
          combined_array << val
        elsif val <= combined_array[0]
          combined_array.insert(0, val)
        elsif val > combined_array.last
          combined_array << val
        else
          low = 0
          high = combined_array.length - 1
          mid = (combined_array.length / 2).floor
          while low != high
            if val == combined_array[mid]
              combined_array.insert(mid, val)
              break
            elsif val < combined_array[mid] && val > combined_array[mid - 1]
              combined_array.insert(mid, val)
              break
            elsif val > combined_array[mid] && val < combined_array[mid + 1]
              combined_array.insert(mid + 1, val)
              break
            elsif val < combined_array[mid]
              high = mid
              mid = ((high + low) / 2).floor
            elsif val > combined_array[mid]
              low = mid
              mid = ((high + low) / 2).floor
            end
          end
        end
      end
    end
    combined_array
  end
end
