require './lib/item'
require './lib/vendor'

RSpec.describe Vendor do
  before :all do
    @item1 = Item.new({name: 'Peach', price: "$0.75"})
    @item2 = Item.new({name: 'Tomato', price: '$0.50'})
  end
  before :each do
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
  describe '#stock' do
    it 'can stock a given quantity of a given item' do
      @vendor.stock(@item1, 30)
      expect(@vendor.inventory).to eq({@item1 => 30})
      @vendor.stock(@item1, 25)
      expect(@vendor.inventory).to eq({@item1 => 55})
    end
    it 'can stock multiple items' do
      @vendor.stock(@item1, 30)
      @vendor.stock(@item2, 12)
      expect(@vendor.inventory).to eq({@item1 => 30, @item2 => 12})
    end
  end
end
