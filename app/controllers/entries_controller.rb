class EntriesController < ApplicationController
  
  def new
    @entry = Entry.new
  end
  
  def create
    @entry = Entry.new(params[:entry])
    @data = Entry.find_by_url(@entry.url)
    if @data
      @entry = @data
    else
      @entry.save
    end   
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
