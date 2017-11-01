class MyQueue
  attr_accessor :head
  attr_accessor :tail

  def initialize
    @queue = Array.new
    @head = @queue[0]
  end

  def enqueue(element)
    @queue << element
    @tail = @queue.last
    @head = @queue.first
  end

  def dequeue
    raise "The queue is empty." if @queue.empty?
    temp = @queue.first
    @queue.delete_at(0)
    @head = @queue.first
    @tail = @queue.last
    return temp
  end

  def empty?
    @queue.length <=0
  end
end
