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
     total_inventory = Hash.new()
     @vendors.each do |vendor|
       vendor.inventory.each do |item, quantity|
         total_inventory[item] = {quantity: 0, vendors: []} if total_inventory[item] == nil
         total_inventory[item][:quantity] += quantity
         total_inventory[item][:vendors] << vendor
       end
     end
     total_inventory
   end
end
