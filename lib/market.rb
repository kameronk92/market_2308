class Market
  attr_reader :name, :vendors

  def initialize(market_name)
    @name = market_name #I know convention may be to have these match but there are too many "name" variables floating in the different classes. 
    @vendors = []
  end
end
