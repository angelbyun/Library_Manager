require 'rails_helper'

RSpec.describe Book, type: :model do
  describe 'relationships' do
    it { should belong_to :library }
  end

  describe 'instance methods' do
    let!(:library_1) { Library.create!(name: 'Denver Public Library', city: 'Denver', opening_time: 10, closing_time: 18, book_available: false) }
    let!(:library_2) { Library.create!(name: 'Douglas County Library', city: 'Highlands Ranch', opening_time: 8, closing_time: 20, book_available: true) }

    let!(:book_1) { Book.create!(title: 'Harry Potter and the Sorcerers Stone', author: 'JK Rowling', fiction: true, number_of_copies: 2, library: library_2) }
    let!(:book_2) { Book.create!(title: 'Verity', author: 'Colleen Hoover', fiction: true, number_of_copies: 0, library: library_1) }
    let!(:book_3) { Book.create!(title: 'The Alchemist', author: 'Paulo Coelo', fiction: true, number_of_copies: 4, library: library_2) }
    let!(:book_4) { Book.create!(title: 'Milk and Honey', author: 'Rupi Kaur', fiction: true, number_of_copies: 0, library: library_1) }
    
    it '::fiction' do
      expect(Book.fiction).to eq([book_1, book_2, book_3, book_4])
    end
  end
end