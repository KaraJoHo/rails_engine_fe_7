require "rails_helper"

RSpec.describe Merchant do 
  before(:each) do 
    merchant_attrs = {:id=>"1", 
                      :type=>"merchant", 
                      :attributes=>{:name=>"Schroeder-Jerde"}
                    }
    @merchant = Merchant.new(merchant_attrs)
  end
  describe "exists/attributes" do 
    it "exists and has attributes" do 
      expect(@merchant).to be_a(Merchant)
      expect(@merchant.name).to eq("Schroeder-Jerde")
      expect(@merchant.id).to eq("1")
    end
  end
end