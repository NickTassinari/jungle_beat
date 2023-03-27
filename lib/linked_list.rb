class LinkedList
  attr_reader :head 
  def initialize
    @head = nil 
  end

  def append(data)
    if @head == nil
      @head = Node.new(data)
    else 
      @head.add_next_node(data)
    end
  end 

  def count 
    # create a count with if statement   
    #if the head is nil the count should be 0
    #else  the count should be 1 and the node is equal to @head

    #until node.nextnode is nil
    #add one to counter and node = node.next_node 
    #return the count 
    if @head.nil? 
      0
    else 
      counter = 1 
      node = @head 

    until node.next_node.nil? 
      counter += 1
      node = node.next_node 
    end   
      counter 
    end
  end 

  def to_string 
    #string is equal to ""
    #unless head.nil? string is equal to @head.data.to_s
    #node is equal to @head
    #until node.next_node.nil?
    #string = string + ' ' + node.next_node.data.to_s

    string = ""
    unless head.nil? 
      string = @head.data.to_s 
      node = @head 
      until node.next_node.nil? 
        string = string + ' ' + node.next_node.data.to_s 
        node = node.next_node 
      end
    end

    string 
  end

  def prepend(data) 
    if @head.nil? 
      @head = Node.new(data)
    else 
      new_head = @head 
      @head = Node.new(data)
      @head.next_node = new_head 
    end

  end

  def insert(position, data)
    if position > count 
      nil 
    else 
      current_node = @head 
      count = 1
      until count == position 
        current_node = current_node.next_node
        count += 1
      end
      node_to_insert = Node.new(data)
      node_to_insert.next_node = current_node.next_node
      current_node.next_node = node_to_insert
    end
  end


  
end