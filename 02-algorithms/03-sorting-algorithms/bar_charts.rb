require 'rubygems'
require 'gruff'

# Simple bar chart of benchmark scores'
g = Gruff::Bar.new

g.title = 'Benchmark Test of Sorting 50 Items '

g.data('quick sort', 0.000206)
g.data('bucket sort', 0.000101)
g.data('heap sort', 0.000432)

g.write
