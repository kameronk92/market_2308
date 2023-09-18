class Market
  attr_reader :name, :vendors

  def initialize(market_name)
    @name = market_name #I know convention may be to have these match but there are too many "name" variables floating in the different classes. 
    @vendors = []
  end

  def add_vendor(vendor)
    @vendors << vendor
  end

  def vendor_names
    @vendors.map do |vendor|
      vendor.name
    end
  end

  def vendors_that_sell(item)
    @vendors.select do |vendor|
      vendor.inventory.include?(item)
    end
  end

  def sorted_items_list
    items_list = @vendors.map do |vendor|
      vendor.inventory.map do |item|
      item[0].info[:name]
      end
    end
    items_list.flatten.uniq.sort
  end
end
