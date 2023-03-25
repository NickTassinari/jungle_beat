require "./lib/linked_list"
require "./lib/node"

RSpec.describe LinkedList do 

  it 'exists' do 
    list = LinkedList.new
    expect(list).to be_a(LinkedList)
  end

  it 'has no head' do 
    list = LinkedList.new 
    expect(list.head).to eq(nil)
  end

  it 'can append new data' do 
    list = LinkedList.new 
    list.append("doop")
    expect(list.head.data).to eq("doop")
  end

  it 'has no next node for the moment' do 
    list = LinkedList.new 
    list.append("doop")
    expect(list.head.next_node).to eq(nil)
  end

  it 'has a list count' do 
    list = LinkedList.new 
    list.append("doop")
    expect(list.count).to eq(1)
  end

  it 'has to string method' do 
    list = LinkedList.new 
    list.append("doop")
    require 'pry'; binding.pry
    
    expect(list.to_string).to eq("doop")
  end

end