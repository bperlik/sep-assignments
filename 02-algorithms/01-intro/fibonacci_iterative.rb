# leaving all pseudocode in for example
# usually leave out pseudocode that corresponds exactly to source code
def fib(n)
  # set fib_0 to 0
  fib_0 = 0
  # set fib_1 to 1
  fib_1 = 1
  # for each value from 0 to n-1
  (0..n-1).each do |temp|
    # set temp to fib_0
    temp = fib_0
    # assign fib_1 to fib_0
    fib_0 = fib_1
    # compute temp + fib_1, assign to fib_1
    fib_1 = temp + fib_1
  # end for loop
  end
  # return fib_1
  return fib_1
end

 puts fib(0)
 puts fib(1)
 puts fib(2)
 puts fib(3)
 puts fib(4)
 puts fib(5)
 puts fib(6)
 puts fib(7)
 puts fib(8)
 puts fib(9)
