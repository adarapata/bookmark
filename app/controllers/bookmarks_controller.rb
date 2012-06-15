# -*- coding: utf-8 -*-
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
    @a = Bookmark.where(:user_id => @bookmark.user_id) 
    @data = @a.find_by_entry_id(@bookmark.entry.id)
    if !@data
      if @bookmark.save
        redirect_to root_path
      end
    else
      flash[:message] = "既にブックマークしているよ "
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
  
  def destroy
   @bookmark = Bookmark.find(params[:id])
   @bookmark.destroy
   redirect_to root_path
  end
end
