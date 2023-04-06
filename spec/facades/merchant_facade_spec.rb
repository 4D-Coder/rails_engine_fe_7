require 'rails_helper'

describe MerchantFacade do
  it 'creates Merchants Poros' do
    all_merchants = MerchantFacade.new.all_merchants
    
    expect(all_merchants.first).to be_a Merchant
  end
end