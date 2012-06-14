class EntriesController < ApplicationController
  
  def new
    @entry = Entry.new
  end
  
  def create
    @entry = Entry.create(params[:entry])
    redirect_to "/bookmark?entry_id=#{@entry.id}"
  end
  
  def show
    @entry = Entry.find(params[:id])
  end

  def index
    @e = Entry.all
    @entries = @e.reverse
  end
end
