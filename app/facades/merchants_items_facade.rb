class MerchantsItemsFacade 
  
  def all_merchants 
    merchant_list = service.all_merchants

    merchants = merchant_list[:data].map do |merchant_info|
      Merchant.new(merchant_info)
    end
  end

  def one_merchant(merchant_id)
    merchant_info = service.one_merchant(merchant_id)
    merchant = Merchant.new(merchant_info[:data])
  end

  def items_of_merchant(merchant_id)
    merchant_items_list = service.merchants_items(merchant_id)

    items = merchant_items_list[:data].map do |item_info| 
      Item.new(item_info)
    end
  end

  def all_items 
    parsed = service.all_items 
    
    items = parsed[:data].map do |item_info|
      Item.new(item_info)
    end
  end

  def one_item(item_id)
    parsed = service.one_item(item_id) 
    item = Item.new(parsed[:data])
  end

  def merchant_search(name_search)
    parsed = service.merchant_search(name_search)
    merchant = Merchant.new(parsed[:data])
  end

  def service 
    @service ||= MerchantsItemsService.new
  end
end