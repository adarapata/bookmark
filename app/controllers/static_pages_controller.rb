class StaticPagesController < ApplicationController
  def home
    @user = User.new
    @e = Entry.order("created_at DESC")
    @entries = @e
    
    if signed_in?
       @bookmarks = Bookmark.where("user_id = ?", current_user.id).order("created_at DESC")
    end
  end
end
