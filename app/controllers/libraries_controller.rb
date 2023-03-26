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

  def library_params
    params.permit(:name)
  end
end