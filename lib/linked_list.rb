class LinkedList
  attr_reader :head 
  def initialize
    @head = nil 
  end

  def append(data)
    if @head.nil?
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
    
  end


end