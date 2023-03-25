require 'rails_helper'

RSpec.describe 'the books show page' do
# User Story 4, Book Show:
# As a visitor
# When I visit '/books/:id'
# Then I see the book with that id including the book's attributes.
# EXAMPLE:
# Title: Harry Potter and the Sorcerer's Stone
# Author: JK Rowling
# Fiction: True
# Number of Copies: 2

  let!(:library_1) { Library.create!(name: 'Denver Public Library', city: 'Denver', opening_time: 10, closing_time: 18, book_available: false) }
  let!(:library_2) { Library.create!(name: 'Douglas County Library', city: 'Highlands Ranch', opening_time: 8, closing_time: 20, book_available: true) }

  let!(:book_1) { Book.create!(title: 'Harry Potter and the Sorcerers Stone', author: 'JK Rowling', fiction: true, number_of_copies: 2, library: library_2) }
  let!(:book_2) { Book.create!(title: 'Verity', author: 'Colleen Hoover', fiction: true, number_of_copies: 0, library: library_1) }
  let!(:book_3) { Book.create!(title: 'The Alchemist', author: 'Paulo Coelo', fiction: true, number_of_copies: 4, library: library_2) }
  let!(:book_4) { Book.create!(title: 'Milk and Honey', author: 'Rupi Kaur', fiction: true, number_of_copies: 0, library: library_1) }

  it 'displays the book title' do
    visit "/books/#{book_1.id}"

    expect(page).to have_content(book_1.title)
    expect(page).to_not have_content(book_2.title)
  end
end