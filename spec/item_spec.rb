require "./spec/spec_helper"

RSpec.describe "Item" do
  before(:each) do
    @item1 = Item.new({name: 'Peach', price: "$0.75"})
    @item2 = Item.new({name: 'Tomato', price: '$0.50'})
  end

  describe "#initialize" do 
    it "begins with an info hash" do 
      expect(@item1).to be_an_instance_of(Item)
      expect(@item1.info).to be_an_instance_of(Hash)
    end
  end

  describe "#name" do
    it "accesses info hash" do
      expect(@item2.name).to eq("Tomato")
    end
  end

  describe "#price" do
    it "accesses info hash" do
      expect(@item2.price).to eq(0.5)
    end
  end
end
