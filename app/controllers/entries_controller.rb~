class EntriesController < ApplicationController
  
  def new
    @entry = Entry.new
  end
  
  def create
    @entry = Entry.new(params[:id])
    @entry.save
  end
  
  def show
    @entry = Entry.find(params[:id])
  end

  def index
    @e = Entry.all
    @entries = @e.reverse
  end
end
