require 'spec_helper'

describe "users/edit" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :id => 1,
      :name => "MyString",
      :pass => "MyString",
      :lastupdate => 1
    ))
  end

  it "renders the edit user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => users_path(@user), :method => "post" do
      assert_select "input#user_id", :name => "user[id]"
      assert_select "input#user_name", :name => "user[name]"
      assert_select "input#user_pass", :name => "user[pass]"
      assert_select "input#user_lastupdate", :name => "user[lastupdate]"
    end
  end
end
