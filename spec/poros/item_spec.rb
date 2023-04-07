require 'rails_helper'

describe Item do
  it 'has attributes' do
    att = {
      id: 1,
      attributes: {
                    name: "Strawberry-Banana",
                    description: "Sweet, perfect for afternoon relaxation without hindering awareness.",
                    unit_price: 12.20,
                    merchant_id: 42
                  }
    }

    item = Item.new(att) 
    
    expect(item).to be_an Item
    expect(item.id).to eq(1)
    expect(item.name).to eq("Strawberry-Banana")
    expect(item.description).to eq("Sweet, perfect for afternoon relaxation without hindering awareness.")
    expect(item.unit_price).to eq(12.20)
    expect(item.merchant_id).to eq(42)
  end
end