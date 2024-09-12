class Node
  attr_accessor :next_node, :value
  def initialize(value)
    @next_node = nil
    @value = value
  end
end

class LinkedList
  def initialize
    @head = nil
  end

  def append(value)
    #adds a new node contain #value at the end of the list
    if @head.nil?
      @head = Node.new(value)
    else
      current = @head
      while current.next_node != nil
        current = current.next_node
      end
      current.next_node = Node.new(value)
    end
    
  end
    
  def prepend(value)
    #adds a new node contain #value at the start of the list
    if @head.nil?
      @head = Node.new(value)
    else
      current_head = Node.new(value)
      current_head.next_node = @head
      @head = current_head
    end
  end

  def size
    #return total number of node in list
    count = 0
    current = @head

    while current != nil
      count += 1
      current = current.next_node
    end
    puts count
  end

  def head
    #return the first node on the list
    if @head.nil?
      return nil
    else
      puts "the first node is: #{@head}"
    end
  end

  def tail
    #return the last node on the list
    current = @head

    if @head.nil? 
      return nil
    else
      while current.next_node != nil
        current = current.next_node
      end
      puts "the last node is: #{current}"
    end

  end

  def at(index)
    #return the node at given index
    current = @head
    i = 0
    while i != index
      current = current.next_node
      i += 1
    end
    puts "the node at #{index} is: #{current}"

  end

  def pop
    #remove the last element on the list
    return if @head.nil?
    if @head.next_node == nil
      @head = nil
    end
    previous = @head
    current = @head.next_node
    while current.next_node != nil
      previous = current
      current = current.next_node
    end

    previous.next_node = nil
  end

  def contains(value)
    #returns true if the given value is inside the list otherwise return false
    current = @head
    while current
      return true if current.value == value
      current = current.next_node
    end
    false

  end

  def find(value)
    #return the index of the node containg value, return nil if not found
    current = @head
    index = 0
    while current
      return index if current.value == value
      current = current.next_node
      index += 1
    end
    nil
  end

  def to_s
    #rapresent the list as a string ( value ) -> ( value ) -> ( value ) -> nil
    values = []
    current = @head
    while current
      values << current.value
      current = current.next_node
    end
    values.join (' -> ')
  end
end

list = LinkedList.new

list.append('cat')
list.append('dog')
list.append('turtle')
list.append('elephant')
list.append('fly')
list.append('cougar')
list.append('eagle')


puts list.find('fly')
puts list.to_s