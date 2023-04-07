class MerchantsController < ApplicationController
  def index
    @merchants = all_merchants
  end

  def show
    @merchant_items = ItemFacade.new.merchant_items(params[:id])
    @merchant = single_merchant(params[:id])
  end

  private

  def all_merchants
    @_all_merchants ||= MerchantFacade.new.all_merchants
  end
  
  def single_merchant(id_param)
    all_merchants.select do |i|
      i.id == id_param
    end.pop
  end
end