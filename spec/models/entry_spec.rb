# -*- coding: undecided -*-
require 'spec_helper'

describe Entry do
  
  describe "fetch title" do
    context "HTTPが付いている場合" do
      
      before do
        @entry = Entry.new(url: "http://google.com")
        @entry.fetch_title 
      end
    end
    
    context "HTTPが付いてない場合" do
      
    end
  end
  
end
