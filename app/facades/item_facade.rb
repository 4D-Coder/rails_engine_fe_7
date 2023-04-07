class ItemFacade
  def merchant_items(merchant_id)
    service = RailsEngineService.new
    json = service.merchant_items(merchant_id)
    json[:data].map do |merchant_item_data|
      Item.new(merchant_item_data)
    end
  end
end