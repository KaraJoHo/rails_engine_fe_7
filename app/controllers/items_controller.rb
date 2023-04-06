class ItemsController < ApplicationController 
  def index 
    @items = MerchantsItemsFacade.new.all_items
  end

  def show 
    @item = MerchantsItemsFacade.new.one_item(params[:id])
  end
end