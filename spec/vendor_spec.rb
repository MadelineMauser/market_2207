require './lib/item'
require './lib/vendor'

RSpec.describe Vendor do
  before :all do
    @item1 = Item.new({name: 'Peach', price: "$0.75"})
    @item2 = Item.new({name: 'Tomato', price: '$0.50'})
    @vendor = Vendor.new("Rocky Mountain Fresh")
  end
  describe 'Vendor instantiation' do
    it 'exists' do
      expect(@item1).to be_an_instance_of(Item)
    end
    it 'has a name' do
      expect(@vendor.name).to eq('Rocky Mountain Fresh')
    end
    it 'has an inventory' do
      expect(@vendor.inventory).to eq({})
    end
  end
  describe '#check_stock' do
    it 'can check stock of a given item' do
      expect(@vendor.check_stock(@item1)).to eq(0)
    end
  end
end
