class Library < ApplicationRecord
  has_many :books

  
  def self.most_recent_created_at
    order(created_at: :asc)
  end

  def book_count
    self.books.count
  end
end