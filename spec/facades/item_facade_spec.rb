require 'rails_helper'

describe ItemFacade do
  describe 'merchant_items' do
    it 'creates a collection of Item Poros for a single merchant' do
      merchant_id = MerchantFacade.new.all_merchants.last.id

      merchant_items = ItemFacade.new.merchant_items(merchant_id)
      expect(merchant_items.last).to be_an Item
      expect(merchant_items.last.merchant_id).to eq(merchant_id.to_i)
    end
  end
end