require "./spec/spec_helper"

RSpec.describe "Vendor" do
  before(:each) do
    @item1 = Item.new({name: 'Peach', price: "$0.75"})
    @item2 = Item.new({name: 'Tomato', price: '$0.50'})
    @vendor = Vendor.new("Rocky Mountain Fresh")
  end

  describe "#initialize" do
    it "creates an instance of vendor with vendor name as argument" do 
      expect(@vendor).to be_an_instance_of(Vendor)
      expect(@vendor.vendor_name).to be_an_instance_of(String)
    end

    it "comes with an inventory as empty hash" do
      expect(@vendor.inventory).to be_an_instance_of(Hash)
      expect(@vendor.inventory).to eq({})
    end
  end

  describe "#check_stock" do
    it "returns the vendor's inventory stock quantity for an item" do
      expect(@vendor.check_stock(@item1)).to eq(0) 
    end
  end

  describe "#stock" do 
    it "adds an item and quantity to the inventory hash" do
      @vendor.stock(@item1, 30)
      expect(@vendor.inventory[@item1]).to eq(30)
    end
  end
end
