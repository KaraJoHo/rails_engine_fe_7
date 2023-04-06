require "rails_helper"

RSpec.describe MerchantsItemsService do 
  before(:each) do 
    @service = MerchantsItemsService.new
  end

  describe "exists", :vcr do 
    it "is a service" do 
      expect(@service).to be_a(MerchantsItemsService)
    end
  end

  describe "api calls", :vcr do 
    it "can get one merchant" do 
      expect(@service.one_merchant(1)).to be_a(Hash)
      expect(@service.one_merchant(1)[:data]).to have_key(:attributes)
    end

    it "can get all merchants" do 
      expect(@service.all_merchants).to be_a(Hash)
      expect(@service.all_merchants[:data]).to be_an(Array)
      expect(@service.all_merchants[:data][0]).to have_key(:attributes)
    end

    it "can get all merchants items" do 
      expect(@service.merchants_items(1)).to be_a(Hash)
      expect(@service.merchants_items(1)[:data]).to be_an(Array)
    end

    it "can get all items" do 
      expect(@service.all_items).to be_a(Hash)
      expect(@service.all_items[:data]).to be_an(Array)
    end

    it "can get one item" do 
      expect(@service.one_item(4)).to be_a(Hash)
      expect(@service.one_item(4)[:data]).to have_key(:attributes)
    end

    it "can get a merchant by searching a name" do 
      expect(@service.merchant_search("Schroeder")).to be_a(Hash)
    end
  end
end