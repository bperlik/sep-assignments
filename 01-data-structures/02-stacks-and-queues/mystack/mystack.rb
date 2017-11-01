class MyStack
  attr_accessor :top

  def initialize
    @stack = Array.new
    @top = nil
    @position = -1
  end

  def push(item)
    @position += 1
    @top = item
    @stack[@position] = @top
  end

  def pop
    raise "This stack is empty" if empty?
    temp = @top
    @stack[@position] = nil
    @position -= 1
    @top = @stack[@position]
    return temp
  end

  def empty?
    @stack.length<=0
  end
end
