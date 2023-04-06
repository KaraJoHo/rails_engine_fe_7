require "rails_helper"

RSpec.describe "Welcome Page" do 
  before(:each) do 
    visit root_path
  end

  describe "search form", :vcr do 
    it "has a merchant search form" do 
      within(".search_form") do 
        expect(page).to have_field(:search)
        expect(page).to have_button("Search")
      end
    end

    it "can search for a merchant with a name fragment" do 
      within(".search_form") do 
        fill_in(:search, with: "Schroeder")
        click_button("Search")
      end

      expect(current_path).to eq(root_path)
      expect(page).to have_content("Schroeder-Jerde")
      expect(page).to_not have_content("Willms and Sons")
    end
  end
end