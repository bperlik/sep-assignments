require_relative 'hash_item'

class HashClass

  def initialize(size)
    @items = Array.new(size)
  end

  def []=(key, value)
    item = HashItem.new(key, value)
    # iterate thru hash if not nil, resize and reset key and store value
    i = index(key, size)
    if @items[i].nil?
      @items[i] = item
    elsif items[i].key != item.key
      self.resize
      self[key] = value
    elsif @items[i].value != item.value
      self.resize
      @items[index(item.key, size)] = value
    end
  end

  # find value of key with size
  def [](key)
    @items[self.index(key, self.size)].value
  end

  @resize using multiply by 2
  def resize
    old_items = @items.compact
    @items = Array.new(self.size * 2)
    old_items.each { |item| self[item.key] = item.value}
  end

  # Returns a unique, deterministically reproducible index into an array
  # We are hashing based on strings, let's use the ascii value of each string as
  # a starting point.
  def index(key, size)
    key.sum % size
  end

  # Simple method to return the number of items in the hash
  def size
    @items.length
  end

  def printHashSize
    i = size
    while i>=0
      if !@items[i].nil?
        puts "lotr_runtimes[\"#{items[i].key}\"] = \"#{@items[i].value}\" ..... Hash: #{i}"
      end
      i = i-1
    end
  end

end
