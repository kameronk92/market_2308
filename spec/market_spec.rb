require "./spec/spec_helper"

RSpec.describe "Market" do
  before(:each) do
    @item1 = Item.new({name: 'Peach', price: "$0.75"})
    @item2 = Item.new({name: 'Tomato', price: '$0.50'})
    @item3 = Item.new({name: "Peach-Raspberry Nice Cream", price: "$5.30"})
    @item4 = Item.new({name: "Banana Nice Cream", price: "$4.25"})
    @vendor1 = Vendor.new("Rocky Mountain Fresh")
    @vendor2 = Vendor.new("Ba-Nom-a-Nom")
    @vendor3 = Vendor.new("Palisade Peach Shack")
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

  describe "#add vendor" do
    it "adds instances of vendor to the vendors hash" do
      @market.add_vendor(@vendor1)
      @vendor1.stock(@item1, 35)
      @vendor1.stock(@item2, 7)
      expect(@market.vendors.length).to eq 1
      @market.add_vendor(@vendor2)
      @vendor2.stock(@item4, 50)
      @vendor2.stock(@item3, 25)
      expect(@market.vendors.length).to eq 2
      @market.add_vendor(@vendor3)
      @vendor3.stock(@item1, 65)
    end
  end

  describe "#vendor_names" do
    it "returns an array of the vendor name strings" do
      @market.add_vendor(@vendor1)
      @market.add_vendor(@vendor2)
      @market.add_vendor(@vendor3)
      @market.vendor_names
    # expect(@market.vendor_names).to eq["Rocky Mountain Fresh", "Ba-Nom-a-Nom", "Palisade Peach Shack"])
    end
  end

  describe "vendors_that_sell" do
    it "searches for an item and returns an array of matching vendor instances" do
      @market.add_vendor(@vendor1)
      @vendor1.stock(@item1, 35)
      @vendor1.stock(@item2, 7)
      expect(@market.vendors.length).to eq 1
      @market.add_vendor(@vendor2)
      @vendor2.stock(@item4, 50)
      @vendor2.stock(@item3, 25)
      expect(@market.vendors.length).to eq 2
      @market.add_vendor(@vendor3)
      @vendor3.stock(@item1, 65)
      # require 'pry'; binding.pry
      expect(@market.vendors_that_sell(@item1).length).to eq 2
      expect(@market.vendors_that_sell(@item4).length).to eq 1
    end
  end

  describe "sorted_items_list" do
    it "creates an array of names of all items at the market" do
      expect(@market.sorted_items_list).to eq(['Peach', 'Tomato',"Peach-Raspberry Nice Cream", "Banana Nice Cream"])
    end
  end
end
