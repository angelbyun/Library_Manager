class Library < ApplicationRecord
  has_many :books

  
  def self.most_recent_created_at
    order(created_at: :asc)
  end

  def book_count
    self.books.count
  end

  def sort_by_title(sort)
    if sort == "alpha"
      self.books.order(title: :asc)
    else
      self.books
    end
  end
end