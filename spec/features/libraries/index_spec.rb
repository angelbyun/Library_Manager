require 'rails_helper'

RSpec.describe '/libraries', type: :feature do
# User Story 1 - Library Index:
# As a visitor
# When I visit '/libraries'
# Then I see the name of each library
# EXAMPLE:
#   Library Names: 
#     - Denver Public Library
#     - Douglas County Library
  describe 'as a visitor, when I visit the Library Index page' do
    let!(:library_1) { Library.create!(name: 'Denver Public Library', city: 'Denver', opening_time: 10, closing_time: 18, book_available: false) }
    let!(:library_2) { Library.create!(name: 'Douglas County Library', city: 'Highlands Ranch', opening_time: 8, closing_time: 20, book_available: true) }

    it 'displays the name of each library' do
      visit '/libraries'

      expect(page).to have_content("Library Index Page")
      expect(page).to have_content(library_1.name)
      expect(page).to have_content(library_2.name)
    end
  end
end