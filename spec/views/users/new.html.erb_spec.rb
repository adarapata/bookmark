require 'spec_helper'

describe "users/new" do
  before(:each) do
    assign(:user, stub_model(User,
      :id => 1,
      :name => "MyString",
      :pass => "MyString",
      :lastupdate => 1
    ).as_new_record)
  end

  it "renders new user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => users_path, :method => "post" do
      assert_select "input#user_id", :name => "user[id]"
      assert_select "input#user_name", :name => "user[name]"
      assert_select "input#user_pass", :name => "user[pass]"
      assert_select "input#user_lastupdate", :name => "user[lastupdate]"
    end
  end
end
