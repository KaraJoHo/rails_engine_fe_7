require "rails_helper"

RSpec.describe MerchantsItemsFacade do 
  before(:each) do 
    @facade = MerchantsItemsFacade.new
  end
  describe "all_merchants" do 
    it "is a list of all merchants" do 
      expect(@facade.all_merchants).to be_an(Array)
      expect(@facade.all_merchants.count).to eq(100)
      expect(@facade.all_merchants.first.name).to eq("Schroeder-Jerde")
    end
  end

  describe "one_merchant" do 
    it "is information for one merchant" do 
      expect(@facade.one_merchant(1)).to be_a(Merchant)
      expect(@facade.one_merchant(1).name).to eq("Schroeder-Jerde")
    end
  end

  describe "items_of_merchant" do 
    it "is a list of a merchants items" do 
      expect(@facade.items_of_merchant(1)).to be_an(Array)
      expect(@facade.items_of_merchant(1).count).to eq(15)
      expect(@facade.items_of_merchant(1).first).to be_a(Item)
    end
  end
end