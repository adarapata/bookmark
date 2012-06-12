require 'spec_helper'

describe User do

  before { @user = User.new(name: "Test", password: "aaaaaa") }

  subject { @user }

  it { should respond_to(:name) }
  it { should respond_to(:password) }
  it { should respond_to(:password_confirmation) }
  it { should respond_to(:lastupdate) }
  it { should respond_to(:password_digest) }

  #it { should be_valid }
  
  describe "when name is not present" do
    before { @user.name = " " }
    it { should_not be_valid }
  end

  describe "when pass is not present" do
    before { @user.password = " " }
    it { should_not be_valid }
  end
  
  describe "when name is too long" do
    before { @user.name = "a" * 51 }
    it { should_not be_valid }
  end

end
