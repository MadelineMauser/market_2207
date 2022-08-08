require './lib/item'

RSpec.describe Item do
  before :all do
    @item1 = Item.new({name: 'Peach', price: "$0.75"})
    @item2 = Item.new({name: 'Tomato', price: '$0.50'})
  end
  describe 'Item instantiation' do
    it 'exists' do
      expect(@item1).to be_an_instance_of(Item)
    end
    it 'has a name' do
      expect(@item1.name).to eq('Peach')
      expect(@item2.name).to eq('Tomato')
    end
  end
end
