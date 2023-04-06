require "rails_helper"

RSpec.describe "Merchants Index" do 
  before(:each) do 
    visit merchants_path
  end
  describe " when visiting merchants", :vcr do 
    it "has a list of merchants by name" do 

      within(".merchants") do
        expect(page).to have_content("Schroeder-Jerde")
        expect(page).to have_css(".merch_name", count: 100)
      end

    end
    it "has links to each merchant name that goes to the merchant show page" do 
      within(".merchants") do 
        expect(page).to have_link("Schroeder-Jerde")
        click_link("Schroeder-Jerde")
      end
      expect(current_path).to eq("/merchants/1")
    end
  end
end