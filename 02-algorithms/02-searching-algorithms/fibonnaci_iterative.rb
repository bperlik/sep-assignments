class IterativeFibonnaci
  def fib(n)
    fib_0 = 0
    fib_1 = 1
    (0..n-1).each do |temp|
      temp = fib_0
      fib_0 = fib_1
      fib_1 = temp + fib_0
    end
    return fib_1
  end
end
