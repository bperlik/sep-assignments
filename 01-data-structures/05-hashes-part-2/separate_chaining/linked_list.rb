require_relative 'node'

class LinkedList
  attr_accessor :head
  attr_accessor :tail

  # initialize the head and tail to nil
  def initialize()
    @head = nil
    @tail = nil
  end

  # This method creates a new `Node` using `data`, and inserts it at the end of the list.
  def add_to_tail(node)
    if @head.nil?
      @head = node
      @tail = @head
    else
      @tail.next = node
      @tail = node
    end
  end

  # This method removes the last node in the lists and must keep the rest of the list intact.
  def remove_tail
    if @head  === @tail
      @head = nil
      @tail = nil
    else
      node = @head
      while ( (node.next != @tail) && (!node.nil?) ) do
        node = node.next
      end
      @tail = node
      @tail.next = nil
    end
  end

  # This method prints out a representation of the list.
  def print(hash)
    node = @head
    i = 0
    puts "Hash______Position__Node_____Value"
    while !node.nil?
      puts "#{hash}.......#{i}........#{node.key}........#{node.value}"
      node = node.next
      i += 1
    end
  end

  # This method removes `node` from the list and must keep the rest of the list intact.
  def delete(node)
    if !@head .nil?
      if @head === node
        remove_front
      elsif @tail === node
        remove_tail
      else
        temp =@head
        while (temp.next != node) && (!temp.nil?)
          temp = temp.next
        end
        if temp.next === node
          temp.next = temp.next.next
        end
      end
    end
  end

  # This method adds `node` to the front of the list and must set the list's head to `node`.
  def add_to_front(node)
    node.next = @head
    @head = node
    if @tail.nil?
      @tail = node
    end
  end

  # This method removes and returns    72   endthe first node in the Linked List and must set Linked List's head to the second node.
  def remove_front
    node = @head
    if @head == @tail
      @head = nil
      @tail = nil
    elsif !@head.nil?
      @head = node.next
      if @head.next.nil?
        @tail = @head
      end
    end
    return node
  end

  def size
    i = 0
    unless @head
      i = 1
      n = @head
      while n != @tail
        n = n.next
        i += 1
      end
    end
  end

  def locate_node(key)
    current_node = @head
    while current_node.key != key && !current_node.nil?
      current_node = current_node.next
    end
    current_node
  end

end
