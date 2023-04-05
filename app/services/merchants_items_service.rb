class MerchantsItemsService 
  def one_merchant(merchant_id)
    get_url("api/v1/merchants/#{merchant_id}")
  end

  def all_merchants
    get_url("api/v1/merchants")
  end

  def merchants_items(merchant_id)
    get_url("api/v1/merchants/#{merchant_id}/items")
  end
  
  def conn 
    Faraday.new(url: "http://localhost:3000/")
  end

  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end
end