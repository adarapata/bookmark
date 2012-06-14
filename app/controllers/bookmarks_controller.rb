class BookmarksController < ApplicationController
  def index
    @bookmark = Bookmarks.all
  end
  
  def new
    @bookmark = Bookmark.new
  end

  def create
    @boookmark = Bookmark.new(params[:id])
  end

  def show
    @bookmark = Bookmarks.find(1)
    @entry = @bookmark.entry
  end
end
