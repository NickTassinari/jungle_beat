require "./lib/linked_list"
require "./lib/node"

RSpec.describe LinkedList do 

  #ITERATION 1
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

    expect(list.to_string).to eq("doop")
  end

  it 'can append more strings' do 
    list = LinkedList.new 
    list.append("doop")
    list.append("deep")

    expect(list.to_string).to eq("doop deep")
  end


  #ITERATION 2

  it 'can prepend string' do 
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    expect(list.to_string).to eq("dop plop suu")
  end

  it 'can insert string' do 
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    list.insert(1, "woo")

    expect(list.to_string).to eq("dop woo plop suu")
  end

  it 'has find method' do 
    list = LinkedList.new
    list.append("shu")
    list.append("blop")
    list.prepend("deep")
    list.insert(1, "woo")
    list.insert(2, "shi")

    expect(list.find(2, 1)).to eq("shi")
  end

  it 'has pop method' do 
    list = LinkedList.new 
    list.append("shu")
    list.append("shi")
    list.append("woo")

    expect(list.pop).to eq("woo")
  end
end