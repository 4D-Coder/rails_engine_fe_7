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
  end
end