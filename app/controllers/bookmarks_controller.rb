class BookmarksController < ApplicationController
  def index
    @bookmarks = Bookmark.all
  end
  
  def new
    @bookmarks = Bookmark.new
  end

  def create
    @boookmarks = Bookmark.new(params[:id])
  end

  def show
    @bookmarks = Bookmark.find(params)
    @entry = @bookmarks.entry
  end
end
