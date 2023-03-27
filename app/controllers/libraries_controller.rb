class LibrariesController < ApplicationController
  def index
    @libraries = Library.most_recent_created_at
  end

  def show
    @library = Library.find(params[:id])
  end

  def new
  end

  def create
    Library.create(library_params)
    redirect_to "/libraries"
  end

  def edit
    @library = Library.find(params[:id])
  end

  def update
    @library = Library.find(params[:id])
    @library.update(library_params)
    @library.save
    redirect_to '/libraries'
  end

private
  def library_params
    params.permit(:name, :city, :opening_time, :closing_time, :book_available)
  end
end