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

  
  


end