require 'benchmark'

require_relative 'poorly_written_ruby.rb'
require_relative 'improving_complexity_version_one.rb'
require_relative 'improving_complexity_version_two.rb'
require_relative 'improving_complexity_version_three.rb'

arr = Array.new(1000){rand(1..250000)}
arr_big = Array.new(100000){rand(1..2500000)}
arr_small = Array.new(10){rand(1..30)}

Benchmark.bm do |bm|
  puts "1000 rand 1 to 250000"
  bm.report ("Poorly Written Ruby (Original): ") {arr.poorly_written_ruby}
  bm.report ("Code Optimized (Reduced Code): ") {arr.better_written_ruby}
  bm.report ("Time Optimized (MergeSort): ") {arr.mergesort_ruby}
  bm.report ("Space Optimized (Bsearch): ") {arr.bsearched_ruby}
end

Benchmark.bm do |bm|
 puts "100,000 rand 1 to 25,000,000"
  bm.report ("Poorly Written Ruby (Original): ") {arr_big.poorly_written_ruby}
  bm.report ("Code Optimized (Reduced Code): ") {arr_big.better_written_ruby}
  bm.report ("Time Optimized (MergeSort): ") {arr_big.mergesort_ruby}
  bm.report ("Space Optimized (Bsearch): ") {arr_big.bsearched_ruby}
end

Benchmark.bm do |bm|
 puts "10 rand 1 to 30"
  bm.report ("Poorly Written Ruby (Original): ") {arr_small.poorly_written_ruby}
  bm.report ("Code Optimized (Reduced Code): ") {arr_small.better_written_ruby}
  bm.report ("Time Optimized (MergeSort): ") {arr_small.mergesort_ruby}
  bm.report ("Space Optimized (Bsearch): ") {arr_small.bsearched_ruby}
end

