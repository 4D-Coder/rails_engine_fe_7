require 'rails_helper'

describe MerchantFacade do
  describe '#all_merchants' do
    it 'creates a collection of Merchant POROs for all merchants' do
      all_merchants = MerchantFacade.new.all_merchants

      expect(all_merchants.first).to be_a Merchant
    end
  end
end