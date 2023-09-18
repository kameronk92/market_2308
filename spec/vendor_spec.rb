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
      expect(@vendor.name).to be_an_instance_of(String)
    end
    it "comes with an inventory as empty hash" do
      expect(@vendor.inventory).to be_an_instance_of(Hash)
      expect(@vendor.inventory).to eq({})
    end
  end
end
