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
  end
end
