class Libraries::BooksController < ApplicationController
  def index
    @library = Library.find(params[:id])
  end
end