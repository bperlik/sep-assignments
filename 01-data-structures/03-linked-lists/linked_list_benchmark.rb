require 'benchmark'
require_relative 'node'
require_relative 'linked_list'

# create array and linked list
TestArray = []
TestLinkedList = LinkedList.new

Benchmark.bm do |x|
  x.report("Add an item to array 10,000 times") {
    i = 0
    while i< 10000 do
      TestArray.push(i)
      i += 1
    end
  }

  x.report("Add an item to end of linked list 10,000 times") {
    i = 0
    while i < 10000 do
      TestLinkedList.add_to_tail(Node.new(i) )
      i +=1
    end
  }

  x.report("Access 5000th element in array") {
    TestArray[4999]
  }

  x.report("Access 5000th node in linked list") {
    TestLinkedList.search(4999)
  }

  x.report("Remove 5000th element in array") {
    TestArray.delete_at(4999)
 }

  x.report("Remove 5000th node in linked list") {
    TestLinkedList.delete(TestLinkedList.search(4999) )
  }
end

