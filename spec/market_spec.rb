require "./spec/spec_helper"

RSpec.describe "Market" do
  before(:each) do
    @item1 = Item.new({name: 'Peach', price: "$0.75"})
    @item2 = Item.new({name: 'Tomato', price: '$0.50'})
    @vendor = Vendor.new("Rocky Mountain Fresh")
    @market = Market.new("South Pearl Street Farmers Market")
  end
  describe "initialize" do
    it "exists" do 
      expect(@market).to be_an_instance_of(Market)
    end

    it "has a name instance variable" do 
      expect(@market.name).to eq("South Pearl Street Farmers Market")
    end

    it "begins with an empty vendors array" do
      expect(@market.vendors).to eq([])
    end
  end
end