require_relative 'node'

class LinkedList
  attr_accessor :head
  attr_accessor :tail

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
    if @head === @tail
      @head = nil
      @tail = nil
    else
      node = @head
      while (( !node.nil? ) && ( node.next != @tail )) do
        node = node.next
      end
      @tail = node
      @tail.next = nil
    end
  end

  # This method prints out a representation of the list.
  def print
    node = @head
    while !node.nil?
      puts node.data
      node = node.next
    end
  end

  # This method removes `node` from the list and must keep the rest of the list intact.
  def delete(node)
    if !@head.nil?
      if @head === node
        remove_front
      elsif @tail === node
        remove_tail
      else
        temp= @head
        while !temp.nil? && temp.next != node
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

  # This method removes and returns the first node in the Linked List and must set Linked List's head to the second node.
  def remove_front
    if @head === @tail
      @head = nil
      @tail = nil
    elsif !@head.nil?
      node = @head.next
      @head = node
      if @head.next.nil?
        @tail = node
      end
    end
  end

  def search(data)
    examine_node = @head
    while !examine_node.nil? && examine_node.data!= data
      examine_node = examine_node.next
    end
    examine_node
  end

end
