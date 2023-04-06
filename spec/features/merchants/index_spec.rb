# frozen_string_literal: true

# spec/features/users/discover/index_spec.rb
require 'rails_helper'

RSpec.describe 'Merchant Index Page', type: :feature do
  describe 'As a visitor' do
    context "When I visit '/merchants'" do
      before(:each) do
        visit merchants_path
      end

      it 'I should see a list of merchant links by name' do
        expect(page).to have_content("Merchants")
        expect(page).to have_css(".merchant", count: 100)

        within(first(".merchant")) do
          expect(page).to have_css(".name")
        end
      end
    end
  end
end
