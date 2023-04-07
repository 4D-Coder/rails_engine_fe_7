require 'rails_helper'

RSpec.describe RailsEngineService do
  context 'instance methods' do
    context '#all_merchants' do
      it 'returns all merchants' do
        merchants_data = RailsEngineService.new.all_merchants
        
        expect(merchants_data).to be_a Hash
        expect(merchants_data[:data]).to be_an Array

        data = merchants_data[:data].first

        expect(data).to have_key :id
        expect(data[:id]).to be_a String

        expect(data).to have_key :type
        expect(data[:type]).to be_a String

        expect(data).to have_key :attributes
        expect(data[:attributes]).to be_a Hash

        expect(data[:attributes]).to have_key :name
        expect(data[:attributes][:name]).to be_a String
      end
    end

    context "#merchant_items()" do
      it 'returns all items for a specific merchant' do
        merchant_list = MerchantFacade.new.all_merchants
        merchant_param = merchant_list.first.id

        merchant_items_data = RailsEngineService.new.merchant_items(merchant_param)
        
        expect(merchant_items_data).to be_a Hash
        expect(merchant_items_data[:data]).to be_an Array

        merchant_items_data[:data].each do |data|
          expect(data).to be_a Hash
          
          expect(data).to have_key :id
          expect(data[:id]).to be_a String

          expect(data).to have_key :type
          expect(data[:type]).to be_a String

          expect(data).to have_key :attributes
          expect(data[:attributes]).to be_a Hash

          expect(data[:attributes]).to have_key :name
          expect(data[:attributes][:name]).to be_a String

          expect(data[:attributes]).to have_key :description
          expect(data[:attributes][:description]).to be_a String

          expect(data[:attributes]).to have_key :unit_price
          expect(data[:attributes][:unit_price]).to be_a Float

          expect(data[:attributes]).to have_key :merchant_id
          expect(data[:attributes][:merchant_id]).to be_an Integer
        end
      end
    end
  end
end