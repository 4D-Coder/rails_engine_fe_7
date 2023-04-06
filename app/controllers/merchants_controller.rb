class MerchantsController < ApplicationController
  def index
   @merchants = MerchantFacade.new.all_merchants
  end

end