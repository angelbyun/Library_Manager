require 'rails_helper'

RSpec.describe '/books', type: :feature do
  describe 'as a visitor, when I visit the books index page' do
    let!(:library_1) { Library.create!(name: 'Denver Public Library', city: 'Denver', opening_time: 10, closing_time: 18, book_available: false) }
    let!(:library_2) { Library.create!(name: 'Douglas County Library', city: 'Highlands Ranch', opening_time: 8, closing_time: 20, book_available: true) }

    let!(:book_1) { Book.create!(title: 'Harry Potter and the Sorcerers Stone', author: 'JK Rowling', fiction: true, number_of_copies: 2, library: library_2) }
    let!(:book_2) { Book.create!(title: 'Verity', author: 'Colleen Hoover', fiction: true, number_of_copies: 0, library: library_1) }
    let!(:book_3) { Book.create!(title: 'The Alchemist', author: 'Paulo Coelo', fiction: true, number_of_copies: 4, library: library_2) }
    let!(:book_4) { Book.create!(title: 'Milk and Honey', author: 'Rupi Kaur', fiction: true, number_of_copies: 0, library: library_1) }

    it 'displays the attributes of each book' do
      visit '/books'

      expect(page).to have_content("Books Index Page")
      expect(page).to have_content("Title: #{book_1.title}")
      expect(page).to have_content("Author: #{book_1.author}")
      expect(page).to have_content("Fiction: #{book_1.fiction}")
      expect(page).to have_content("Number of Copies: #{book_1.number_of_copies}")

      expect(page).to have_content("Title: #{book_2.title}")
      expect(page).to have_content("Author: #{book_2.author}")
      expect(page).to have_content("Fiction: #{book_2.fiction}")
      expect(page).to have_content("Number of Copies: #{book_2.number_of_copies}")

      expect(page).to have_content("Title: #{book_3.title}")
      expect(page).to have_content("Author: #{book_3.author}")
      expect(page).to have_content("Fiction: #{book_3.fiction}")
      expect(page).to have_content("Number of Copies: #{book_3.number_of_copies}")

      expect(page).to have_content("Title: #{book_4.title}")
      expect(page).to have_content("Author: #{book_4.author}")
      expect(page).to have_content("Fiction: #{book_4.fiction}")
      expect(page).to have_content("Number of Copies: #{book_4.number_of_copies}")
    end
  end
end