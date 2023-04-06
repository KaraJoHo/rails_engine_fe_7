require "rails_helper"

RSpec.describe "Merchant Show Page" do 
  before(:each) do 
    visit merchant_path(1)
  end

  describe "Merchant Show Page", :vcr do 
    it "has a list of items the merchant sells" do 
      expect(page).to have_content("Schroeder-Jerde")
      within(".merchant_items") do 
        expect(page).to have_content("Item Nemo Facere")
        expect(page).to have_css(".item", count: 15)
      end
    end
  end
end