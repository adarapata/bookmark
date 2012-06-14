
class StaticPagesController < ApplicationController
  def home
    @user = User.new
    @e = Entry.all
    @entries = @e.reverse
  end
end
