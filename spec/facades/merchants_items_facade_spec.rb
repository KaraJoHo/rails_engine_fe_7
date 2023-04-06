require "rails_helper"

RSpec.describe MerchantsItemsFacade do 
  before(:each) do 
    @facade = MerchantsItemsFacade.new
  end
  describe "all_merchants", :vcr do 
    it "is a list of all merchants" do 
      expect(@facade.all_merchants).to be_an(Array)
      expect(@facade.all_merchants.count).to eq(100)
      expect(@facade.all_merchants.first.name).to eq("Schroeder-Jerde")
    end
  end

  describe "one_merchant", :vcr do 
    it "is information for one merchant" do 
      expect(@facade.one_merchant(1)).to be_a(Merchant)
      expect(@facade.one_merchant(1).name).to eq("Schroeder-Jerde")
    end
  end

  describe "items_of_merchant", :vcr do 
    it "is a list of a merchants items" do 
      expect(@facade.items_of_merchant(1)).to be_an(Array)
      expect(@facade.items_of_merchant(1).count).to eq(15)
      expect(@facade.items_of_merchant(1).first).to be_a(Item)
    end
  end

  describe "all_items", :vcr do 
    it "is a list of a items" do 
      expect(@facade.all_items).to be_an(Array)
      expect(@facade.all_items.count).to eq(2483)
      expect(@facade.all_items.first.name).to eq("Item Nemo Facere")
    end
  end

  describe "one_item", :vcr do 
    it "is information for one item" do 
      expect(@facade.one_item(4)).to be_a(Item)
      expect(@facade.one_item(4).name).to eq("Item Nemo Facere")
    end
  end

  describe "merchant_search", :vcr do 
    it "is the result of names from a merchant search api call" do 
      expect(@facade.merchant_search("Schroeder")).to be_a(Merchant)
    end
  end
end