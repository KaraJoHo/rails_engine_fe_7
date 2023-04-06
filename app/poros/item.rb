class Item 
  attr_reader :name, :id, :description, :unit_price
  def initialize(item_info)
    @name = item_info[:attributes][:name]
    @id = item_info[:id]
    @description = item_info[:attributes][:description]
    @unit_price = item_info[:attributes][:unit_price]
  end
end