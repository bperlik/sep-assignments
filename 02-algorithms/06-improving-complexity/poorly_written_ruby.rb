# ORIGINAL POORLY WRITTEN RUBY CODE
# This is the original code to improve upon
#
# This method takes n arrays as input and combine them in sorted ascending order
require 'benchmark'

class Array
 def poorly_written_ruby(*arrays)
   combined_array = []
   arrays.each do |array|
     array.each do |value|
       combined_array << value
     end
   end

   sorted_array = [combined_array.delete_at(combined_array.length-1)]

   for val in combined_array
     i = 0
     while i < sorted_array.length
  if val <= sorted_array[i]
         sorted_array.insert(i, val)
         break
       elsif i == sorted_array.length - 1
         sorted_array << val
         break
       end
       i+=1
     end
   end

   # Return the sorted array
   sorted_array
  end
end

# ar = [2,5,7,9]
# ar2 = [1,8,4,6,3]
# puts "#{poorly_written_ruby(ar, ar2)}"


