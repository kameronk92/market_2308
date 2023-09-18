class Vendor
  attr_reader :vendor_name, :inventory

  def initialize(vendor_name)
    @vendor_name = vendor_name
    @inventory = {}
  end

  def check_stock(name)
    if @inventory[:name].nil?
      0
    else
      @inventory[:name]
    end
  end

  def stock(name, quantity)
    @inventory[name] = quantity
  end
end
