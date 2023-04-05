require "rails_helper"

RSpec.describe MerchantsItemsService do 
  before(:each) do 
    @service = MerchantsItemsService.new
  end

  describe "exists" do 
    it "is a service" do 
      expect(@service).to be_a(MerchantsItemsService)
    end
  end

  describe "api calls" do 
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
  end

  describe "conn" do 
    it "is a connection to the base uri" do 

    end
  end
end