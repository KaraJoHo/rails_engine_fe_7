class MerchantsController < ApplicationController 
  def index 
    @merchants = MerchantsItemsFacade.new.all_merchants
  end

  def show 
    @items = MerchantsItemsFacade.new.items_of_merchant(params[:id])
    @merchant = MerchantsItemsFacade.new.one_merchant(params[:id])
  end
end