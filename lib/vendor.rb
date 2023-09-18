class Vendor
  attr_reader :name, :inventory

  def initialize(vendor_name)
    @name = vendor_name
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
    if @inventory[name].nil?
      @inventory[name] = quantity
    else
      quantity_new = @inventory[name] + quantity
      @inventory[name] = quantity_new
    end
  end
end
