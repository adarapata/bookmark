# -*- coding: utf-8 -*-
require 'spec_helper'

describe Bookmarks do
  
  describe "fetch title" do
    context "HTTPが付いている場合" do
      
      before do
        @user = User.new(name:"user", password:"hoge",
                         password_confirmation:"hoge")
        @entry = Entry.new(url: "http://www.google.com")
        @bookmark = Bookmarks.new(title:"", 
                                  user_id:1,entry_id:1,
                                  comment:"comment")
        @bookmark.fetch_title(@entry.url)
      end
        
      subject { @bookmark.title }
      
      it { should_not be_empty }
      it { should == "Google" }
      
    end
    
    context "HTTPが付いてない場合" do
      
    end
  end
end
