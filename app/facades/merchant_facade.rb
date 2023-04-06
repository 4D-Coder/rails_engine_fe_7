class MerchantFacade
  def all_merchants
    service = RailsEngineService.new
    json = service.all_merchants
    json[:data].map do |merchant_data|
      Merchant.new(merchant_data)
    end
  end
end