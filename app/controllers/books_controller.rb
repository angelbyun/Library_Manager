class BooksController < ApplicationController
  def index
    # @books = Book.all
    @books = Book.fiction
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    @book.update(book_params)
    @book.save
    redirect_to "/books/#{@book.id}"
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to "/books"
  end

  private
  def book_params
    params.permit(:title, :author, :fiction, :number_of_books)
  end
end