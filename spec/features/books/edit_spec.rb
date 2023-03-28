require 'rails_helper'

RSpec.describe 'book edit' do
let!(:library_1) { Library.create!(name: 'Denver Public Library', city: 'Denver', opening_time: 10, closing_time: 18, book_available: false) }
let!(:library_2) { Library.create!(name: 'Douglas County Library', city: 'Highlands Ranch', opening_time: 8, closing_time: 20, book_available: true) }

let!(:book_1) { Book.create!(title: 'Harry Potter and the Sorcerers Stone', author: 'JK Rowling', fiction: true, number_of_copies: 2, library: library_2) }
let!(:book_2) { Book.create!(title: 'Verity', author: 'Colleen Hoover', fiction: true, number_of_copies: 0, library: library_1) }
let!(:book_3) { Book.create!(title: 'The Alchemist', author: 'Paulo Coelo', fiction: true, number_of_copies: 4, library: library_2) }
let!(:book_4) { Book.create!(title: 'Milk and Honey', author: 'Rupi Kaur', fiction: true, number_of_copies: 0, library: library_1) }

  it 'links to edit page' do
    visit "/books/#{book_1.id}"

    click_link("Edit #{book_1.title}")

    expect(current_path).to eq("/books/#{book_1.id}/edit")
  end

  it 'can edit the library' do
    visit "/books/#{book_1.id}/edit"

    fill_in 'Title', with: 'Harry Potter and the Sorcerers Stone'
    click_button('Update Book')

    expect(current_path).to eq("/books/#{book_1.id}")
    expect(page).to have_content('Harry Potter and the Sorcerers Stone')
  end
end