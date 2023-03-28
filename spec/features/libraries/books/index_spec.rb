require 'rails_helper'

RSpec.describe '/libraries/:library_id/books', type: :feature do
  # User Story 5, Library Books Index:
  # As a visitor
  # When I visit '/libraries/:library_id/books'
  # Then I see each Book that is associated with that Library with each Book's attributes
  # EXAMPLE:
  # Total Books at Denver Public Library: 2
  # Total Books at Douglas County Library: 2
  describe 'as a visitor, when I visit the library books index page' do
    let!(:library_1) { Library.create!(name: 'Denver Public Library', city: 'Denver', opening_time: 10, closing_time: 18, book_available: false) }
    let!(:library_2) { Library.create!(name: 'Douglas County Library', city: 'Highlands Ranch', opening_time: 8, closing_time: 20, book_available: true) }

    let!(:book_1) { Book.create!(title: 'Harry Potter and the Sorcerers Stone', author: 'JK Rowling', fiction: true, number_of_copies: 2, library: library_2) }
    let!(:book_2) { Book.create!(title: 'Verity', author: 'Colleen Hoover', fiction: true, number_of_copies: 0, library: library_1) }
    let!(:book_3) { Book.create!(title: 'The Alchemist', author: 'Paulo Coelo', fiction: true, number_of_copies: 4, library: library_2) }
    let!(:book_4) { Book.create!(title: 'Milk and Honey', author: 'Rupi Kaur', fiction: true, number_of_copies: 0, library: library_1) }

    it 'can see each book that is associated with that library with each books attributes' do
      visit "/libraries/#{library_1.id}/books"

      expect(page).to have_content("Total Books at Denver Public Library: 2")
    end

    it 'can sort alphabetically by title' do
      visit "/libraries/#{library_1.id}/books"

      click_on 'Sort Alphabetically'

      expect(current_path).to eq("/libraries/#{library_1.id}/books")
      expect(book_4.title).to appear_before(book_2.title)
    end
  end
end