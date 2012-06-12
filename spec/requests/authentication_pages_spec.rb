# -*- coding: undecided -*-
require 'spec_helper'

describe "Authentication" do

  subject { page }

  describe "signin page" do
    before { visit signin_path }
    #it { should have_selector('h1',    text: 'Sign in') }
    #it { should have_selector('title', text: 'Sign in') }
  end

  describe "signin" do
    before { visit signin_path }
    
    describe "with invalid information" do
      before { click_button "Sign in" }
      
      it { should have_selector('h5', text: 'サインイン！') }
      it { should have_selector('div.alert.alert-error', text: 'Invalid') }
    end
  end
end
