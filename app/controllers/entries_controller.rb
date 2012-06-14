class EntriesController < ApplicationController
  
  def new
    @entry = Entry.new
  end
  
  def create
    @entry = Entry.new(params[:id])
  end
  

end
