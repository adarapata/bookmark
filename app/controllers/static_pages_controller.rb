class StaticPagesController < ApplicationController
  def home
    @user = User.new
    @e = Entry.all
    @entries = @e.reverse
    
    if signed_in?
       @bookmarks = Bookmark.where("user_id = ?", current_user.id).reverse
    end
  end
end
