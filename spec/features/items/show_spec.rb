require "rails_helper"

RSpec.describe "Item Show Page" do 
  before(:each) do 
    visit item_path(4)
  end

  describe "when visiting the show page for an item", :vcr do 
    it "has the name, description and unit price" do 
      expect(page).to have_content("Item Nemo Facere")
      expect(page).to_not have_content("Item Expedita Aliquam")
    
      within(".item_info") do 
        expect(page).to have_content("Sunt eum id eius magni consequuntur delectus veritatis. Quisquam laborum illo ut ab. Ducimus in est id voluptas autem.")
        expect(page).to have_content("42.91")
        expect(page).to_not have_content("Voluptate aut labore qui illum tempore eius. Corrupti cum et rerum. Enim illum labore voluptatem dicta consequatur. Consequatur sunt consequuntur ut officiis.")
        expect(page).to_not have_content("687.23")
      end
    end
  end
end