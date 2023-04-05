class MerchantsItemsFacade 
  def all_merchants 
    merchant_list = service.all_merchants

    @merchants = merchant_list[:data].map do |merchant_info|
      Merchant.new(merchant_info)
    end
  end

  def one_merchant(merchant_id)
    merchant_info = service.one_merchant(merchant_id)

    @merchant = Merchant.new(merchant_info[:data])
  end

  def items_of_merchant(merchant_id)
    merchant_items_list = service.merchants_items(merchant_id)

    @items = merchant_items_list[:data].map do |item_info| 
      Item.new(item_info)
    end
  end

  def service 
    @service ||= MerchantsItemsService.new
  end
end