class BookmarksController < ApplicationController
  def index
    @bookmarks = Bookmark.all
  end
  
  def new
    @entry = Entry.find(params[:entry_id])
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(params[:bookmark])
    if @bookmark.save
      redirect_to root_path
    end
    
  end

  def show
    @bookmarks = Bookmark.find(params)
    @entry = @bookmarks.entry
  end

  def add_bookmark
    @entry = Entry.new
  end
  
  def add_comment

  end
end
