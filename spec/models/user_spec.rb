require 'spec_helper'

describe User do

  before { @user = User.new(name: "Test", pass: "aaaaaa") }

  subject { @user }

  it { should respond_to(:name) }
  it { should respond_to(:pass) }
  it { should respond_to(:lastupdate) }

  it { should be_valid }
  
  describe "when name is not present" do
    before { @user.name = " " }
    it { should_not be_valid }
  end

  describe "when pass is not present" do
    before { @user.pass = " " }
    it { should_not be_valid }
  end
  
  describe "when name is too long" do
    before { @user.name = "a" * 51 }
    it { should_not be_valid }
  end

end
