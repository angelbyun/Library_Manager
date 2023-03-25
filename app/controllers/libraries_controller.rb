class LibrariesController < ApplicationController
  def index
    @libraries = Library.most_recent_created_at
  end

  def show
    @library = Library.find(params[:id])
  end
end