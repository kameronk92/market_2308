class Vendor
  attr_reader :name, :inventory

  def initialize(vendor_name)
    @name = vendor_name #I know convention may be to have these match but there are too many "name" variables floating in the different classes. 
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

  def potential_revenue
    @inventory.reduce(0) do |potential_revenue, item|
      potential_revenue + item[0].price * item[1]
    end
  end
end
