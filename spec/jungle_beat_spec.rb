require './lib/node'
require './lib/jungle_beat'
require './lib/linked_list'

RSpec.describe LinkedList do 
  jungle_massive = JungleBeat.new 

  it 'exists' do 
    expect(jungle_massive).to be_a(JungleBeat)
  end

  it 'has readable attributes' do 
    jungle_massive = JungleBeat.new

    expect(jungle_massive.list).to be_a(LinkedList)
    expect(jungle_massive.list.head).to eq(nil)
  end

  it 'adds nodes to list with append' do 

    jungle_massive = JungleBeat.new
    jungle_massive.append('deep doo ditt')

    expect(jungle_massive.list.to_string).to eq('deep doo ditt')
    expect(jungle_massive.list.head.data).to eq('deep')
    expect(jungle_massive.list.head.next_node.data).to eq('doo')
  end

  it 'has count method' do 
    jungle_massive = JungleBeat.new
    jungle_massive.append('deep doo ditt')

    expect(jungle_massive.count).to eq(3)

    jungle_massive.append('woo hoo shu')
    expect(jungle_massive.count).to eq(6)
  end 

  it 'has play method' do 
    jungle_massive.append('deep doo ditt woo hoo shu')

    expect(jungle_massive.play).to eq(`say -r 75 'deep doo ditt woo hoo shu'`)
  end
end