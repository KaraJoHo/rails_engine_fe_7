require "rails_helper"

RSpec.describe "Item Index Page" do 
  before(:each) do 
    visit items_path
  end

  describe "When visiting the items index page", :vcr do 
    it "has a list of items" do 
      within(".items") do 
        expect(page).to have_content("Item Nemo Facere")
        expect(page).to have_css(".item_name", count: 2483)
      end
    end

    it "can click on the items name and be taken to that items show page" do 
      within(".items") do 
        expect(page).to have_link("Item Nemo Facere")
        click_link("Item Nemo Facere")
      end

      expect(current_path).to eq(item_path(4))
    end
  end
end