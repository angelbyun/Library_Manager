require 'rails_helper'

RSpec.describe 'Library edit' do
# User Story 12, Library Update
# As a visitor,
# When I visit a library show page
# Then I see a link to update the library "Update Library"
# When I click the link "Update Library"
# Then I am taken to '/parents/:id/edit' where I see a form to edit the library's attributes:
# When I click the button to submit the form
# Then a `PATCH` request is sent to '/libraries/:id',
# the library's info is update,
# and I am redirected to the Library's Show page where I see the library's updated info
let!(:library_1) { Library.create!(name: 'Denver Public Library', city: 'Denver', opening_time: 10, closing_time: 18, book_available: false) }
let!(:library_2) { Library.create!(name: 'Douglas County Library', city: 'Highlands Ranch', opening_time: 8, closing_time: 20, book_available: true) }

let!(:book_1) { Book.create!(title: 'Harry Potter and the Sorcerers Stone', author: 'JK Rowling', fiction: true, number_of_copies: 2, library: library_2) }
let!(:book_2) { Book.create!(title: 'Verity', author: 'Colleen Hoover', fiction: true, number_of_copies: 0, library: library_1) }
let!(:book_3) { Book.create!(title: 'The Alchemist', author: 'Paulo Coelo', fiction: true, number_of_copies: 4, library: library_2) }
let!(:book_4) { Book.create!(title: 'Milk and Honey', author: 'Rupi Kaur', fiction: true, number_of_copies: 0, library: library_1) }
  it 'links to edit page' do
    visit "/libraries/#{library_1.id}"

    click_link("Edit #{library_1.name}")

    expect(current_path).to eq("/libraries/#{library_1.id}/edit")
  end

  it 'can edit the library' do
    visit "/libraries/#{library_1.id}/edit"

    fill_in 'Name', with: 'Denver Public Library'
    click_button('Update Library')

    expect(current_path).to eq("/libraries/#{library_1.id}")
    expect(page).to have_content('Denver Public Library')    
  end

  it 'links to edit page' do
    visit "/libraries"

    click_link("Edit #{library_1.name}")

    expect(current_path).to eq("/libraries/#{library_1.id}/edit")
  end

  it 'can edit the library' do
    visit "/libraries/#{library_1.id}/edit"

    fill_in 'Name', with: 'Denver Public Library'
    click_button('Update Library')

    expect(current_path).to eq("/libraries/#{library_1.id}")
    expect(page).to have_content('Denver Public Library')    
  end
end