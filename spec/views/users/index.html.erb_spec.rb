require 'spec_helper'

describe "users/index" do
  before(:each) do
    assign(:users, [
      stub_model(User,
        :id => 1,
        :name => "Name",
        :pass => "Pass",
        :lastupdate => 2
      ),
      stub_model(User,
        :id => 1,
        :name => "Name",
        :pass => "Pass",
        :lastupdate => 2
      )
    ])
  end

  it "renders a list of users" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Pass".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
