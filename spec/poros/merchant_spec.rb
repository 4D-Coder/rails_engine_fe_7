require 'rails_helper'

describe Merchant do
  it 'has attributes' do
    att = {
      id: 1,
      attributes: {
                  name: "Schroeder-Jerde"
      }
    }

    merchant = Merchant.new(att) 
    
    expect(merchant).to be_a Merchant
    expect(merchant.id).to eq(1)
    expect(merchant.name).to eq("Schroeder-Jerde")
  end
end