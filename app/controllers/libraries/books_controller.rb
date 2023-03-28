class Libraries::BooksController < ApplicationController
  def index
    @library = Library.find(params[:id])
    @books = @library.sort_by_title(params[:sort])
  end

  def new
  end

  def create
    @library = Library.find(params[:id])
    @library.books.create(title: params[:title])
  end
end