require 'rails_helper'

describe Merchant do
  it 'has attributes' do
    att = {
      id: "1",
      name: "Schroeder-Jerde"
    }

    merchant = Merchant.new(att) 
    
    expect(merchant).to be_a Merchant
    expect(merchant.id).to eq(att[:id])
    expect(merchant.name).to eq(att[:name])
  end
end