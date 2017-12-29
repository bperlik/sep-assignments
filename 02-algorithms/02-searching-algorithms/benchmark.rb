require 'benchmark'

require_relative 'fibonnaci_iterative.rb'
require_relative 'fibonnaci_recursive.rb'

recursive_fib = RecursiveFibonnaci.new
iterative_fib = IterativeFibonnaci.new

puts "Recursive Fibonnaci 20:"
puts Benchmark.measure { recursive_fib.fib(20) }
puts "Iterative Fibonnaci 20:"
puts Benchmark.measure { iterative_fib.fib(20) }

puts "Recursive Fibonnaci 40:"
puts Benchmark.measure { recursive_fib.fib(40) }
puts "Iterative Fibonnaci 40:"
puts Benchmark.measure { iterative_fib.fib(40) }


