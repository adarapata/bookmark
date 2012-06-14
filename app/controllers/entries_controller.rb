class EntriesController < ApplicationController
  
  def new
    @entry = Entry.new
  end
  
  def create
    @entry = Entry.new(params[:id])
    if Entry.find_by_url(@entry.url).nil?
      @entry.save
    end
  end
  
  def show
    @entry = Entry.find(params[:id])
  end

  def index
    @e = Entry.all
    @entries = @e.reverse
  end
end
