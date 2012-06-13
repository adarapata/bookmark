class EntriesController < ApplicationController
  
  def new
    @entry = Entry.new
  end
  
  def create
    @entry = Entry.new(params[:user])
  end
  
  def show
    @entry = Entry.find(params[:id])
  end

end
