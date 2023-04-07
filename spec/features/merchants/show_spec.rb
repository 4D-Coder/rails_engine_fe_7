# frozen_string_literal: true

# spec/features/users/discover/index_spec.rb
require 'rails_helper'

RSpec.describe 'Merchant Show Page', type: :feature do
  describe 'As a visitor' do
    context "When I visit '/merchants/:id'" do
      before(:each) do
        @merchant = MerchantFacade.new.all_merchants.first
        @merchant_items = ItemFacade.new.merchant_items(@merchant.id)

        visit merchant_path(@merchant.id)
      end

      it "I should see a list of that merchant's items" do
        expect(page).to have_content("#{@merchant.name}'s Items")
        expect(page).to have_css(".merchant_item")

        within(first(".merchant_item")) do
          expect(page).to have_css(".name")
          expect(page).to have_css(".description")
          expect(page).to have_css(".unit_price")
        end
      end
    end
  end
end
