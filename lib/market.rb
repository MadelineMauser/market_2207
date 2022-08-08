class Market
  attr_reader :name, :vendors
  def initialize(name)
    @name = name
    @vendors = []
  end

  def add_vendor(vendor)
    @vendors << vendor
  end

   def vendor_names
     @vendors.map{|vendor| vendor.name}
   end

   def vendors_that_sell(item)
     @vendors.select {|vendor| vendor.inventory.keys.any?(item)}
   end

   def total_inventory
     total_inventory = {}
     @vendors.each {|vendor| vendor.inventory.each {|item, quantity| }}
   end
end
