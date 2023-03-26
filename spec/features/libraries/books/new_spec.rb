require 'rails_helper'

RSpec.describe 'library book creation' do
# User Story 13, Library Book Creation
# As a visitor
# When I visit a Library Book Index page
# Then I see a link to add a new adoptable book for that library "Create Book"
# When I click the link
# I am taken '/libraries/:library_id/books/new' where I see a form to add a new adoptable book
# When I fill in the form with the book's attributes:
# And I click the button "Create Book"
# Then a `POST` request is sent to '/libraries/:library_id/books',
# a new book object/row is created for that library,
# and I am redirected to the Library Book Index page where I can see the new book listed
  let!(:library_1) { Library.create!(name: 'Denver Public Library', city: 'Denver', opening_time: 10, closing_time: 18, book_available: false) }
  let!(:library_2) { Library.create!(name: 'Douglas County Library', city: 'Highlands Ranch', opening_time: 8, closing_time: 20, book_available: true) }

  let!(:book_1) { Book.create!(title: 'Harry Potter and the Sorcerers Stone', author: 'JK Rowling', fiction: true, number_of_copies: 2, library: library_2) }
  let!(:book_2) { Book.create!(title: 'Verity', author: 'Colleen Hoover', fiction: true, number_of_copies: 0, library: library_1) }
  let!(:book_3) { Book.create!(title: 'The Alchemist', author: 'Paulo Coelo', fiction: true, number_of_copies: 4, library: library_2) }
  let!(:book_4) { Book.create!(title: 'Milk and Honey', author: 'Rupi Kaur', fiction: true, number_of_copies: 0, library: library_1) }

  it 'links to new page for adoptable book for that library' do
    visit "/libraries/#{library_1.id}/books"

    click_link('New Book')

    expect(current_path).to eq("/libraries/#{library_1.id}/books/new")
  end

  it 'can create new books in a library' do
    visit "/libraries/#{library_1.id}/books/new"

    fill_in('Title', with: 'It Ends with Us')
    click_button('Create Book')

    expect(current_path).to eq("/libraries/#{library_1.id}/books/new")
  end
end