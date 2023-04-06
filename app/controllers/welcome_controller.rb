class WelcomeController < ApplicationController 
  def index 
    if !params[:search].nil?
      @merchant = MerchantsItemsFacade.new.merchant_search(params[:search])
    end
  end
end