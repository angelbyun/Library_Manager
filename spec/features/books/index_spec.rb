require 'rails_helper'

RSpec.describe '/books', type: :feature do
  # User Story 2, Book Index:
  # As a visitor
  # When I visit '/books'
  # Then I see the attributes of each book
  # EXAMPLE: 
  # Title: Harry Potter and the Sorcerer's Stone
  # Author: J.K. Rowling
  # Fiction: True
  # Number of Copies: 2
  describe 'as a visitor, when I visit the books index page' do
    it 'displays the attributes of each book' do
      visit '/books'

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