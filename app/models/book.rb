class Book < ApplicationRecord
  belongs_to :library

  def self.fiction
    Book.where(fiction: "true").to_a
  end
end