# CODE OPTIMIZED version of badly written ruby
# I tried to reduce process time by iterating thru arrays only once,
# combining and sorting.

require 'benchmark'

class Array

# This method takes n arrays as input and combine them in sorted ascending order
def better_written_ruby(*arrays)
    combined_array = []

    arrays.each do |array|
      for val in array
        i = 0
        if combined_array.length == 0
          combined_array << val
        else
          while i < combined_array.length
            if val <= combined_array[i]
              combined_array.insert(i, val)
              break
            elsif i == combined_array.length - 1
              combined_array << val
              break
            end
            i+= 1
          end
        end
      end
    end

    combined_array
  end
end
