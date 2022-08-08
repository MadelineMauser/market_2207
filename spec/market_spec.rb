require './lib/item'
require './lib/vendor'
require './lib/market'

RSpec.describe Market do
  before :all do
    @item1 = Item.new({name: 'Peach', price: "$0.75"})
    @item2 = Item.new({name: 'Tomato', price: '$0.50'})
  end
  before :each do
    @vendor1 = Vendor.new("Rocky Mountain Fresh")
    @market = Market.new("South Pearl Street Farmers Market")
  end
  describe 'Market instantiation' do
    it 'exists' do
      expect(@market).to be_an_instance_of(Market)
    end
  end
end
