class Item 
  attr_reader :name, :id
  def initialize(item_info)
    @name = item_info[:attributes][:name]
    @id = item_info[:id]
  end
end