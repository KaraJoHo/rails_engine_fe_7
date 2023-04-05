require "rails_helper"

RSpec.describe Item do 
  before(:each) do 
    item_attrs = {:id=>"4",
                  :type=>"item",
                  :attributes=>
                    {
                      :name=>"Item Nemo Facere",
                      :description=>"Sunt eum id eius magni consequuntur delectus veritatis. Quisquam laborum illo ut ab. Ducimus in est id voluptas autem.",
                      :unit_price=>42.91,
                      :merchant_id=>1
                    }
                  }
    @item = Item.new(item_attrs)
  end

  describe "exists/attributes" do 
    it "exists and has attributes" do 
      expect(@item).to be_a(Item)
      expect(@item.name).to eq("Item Nemo Facere")
      expect(@item.id).to eq("4")
    end
  end
end