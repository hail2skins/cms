# == Schema Information
#
# Table name: owners
#
#  id              :integer          not null, primary key
#  first_name      :string(255)
#  last_name       :string(255)
#  email           :string(255)
#  password_digest :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#  remember_token  :string(255)
#  admin           :boolean          default(FALSE)
#  middle_name     :string(255)
#

# == Schema Information
#
# Table name: owners
#
#  id              :integer          not null, primary key
#  first_name      :string(255)
#  last_name       :string(255)
#  email           :string(255)
#  password_digest :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

require 'spec_helper'

describe Owner do
  before do 
  	@owner = Owner.new(first_name: "Joe", last_name: "Blow",	
  					   email: "joe@blow.com", password: "foobar",
  					   password_confirmation: "foobar")
  end

  subject { @owner }

  it { should respond_to(:first_name) }
  it { should respond_to(:last_name) }
  it { should respond_to(:email) }
  it { should respond_to(:password_digest) }
  it { should respond_to(:password) }
  it { should respond_to(:password_confirmation) }
  it { should respond_to(:remember_token) }
  it { should respond_to(:authenticate) }

  it { should be_valid }

  describe "when first_name is not present" do
  	before { @owner.first_name = " " }
  	it { should_not be_valid }
  end

  describe "when last_name is not present" do
  	before { @owner.last_name = " " }
  	it { should_not be_valid }
  end

  describe "when email is not present" do
  	before { @owner.email = " " }
  	it { should_not be_valid }
  end

   describe "when email format is invalid" do
    it "should be invalid" do
      addresses = %w[user@foo,com user_at_foo.org example.user@foo.
                     foo@bar_baz.com foo@bar+baz.com]
      addresses.each do |invalid_address|
        @owner.email = invalid_address
        @owner.should_not be_valid
      end      
    end
  end

  describe "when email format is valid" do
    it "should be valid" do
      addresses = %w[user@foo.COM A_US-ER@f.b.org frst.lst@foo.jp a+b@baz.cn]
      addresses.each do |valid_address|
        @owner.email = valid_address
        @owner.should be_valid
      end      
    end
  end

  describe "when email address is already taken" do
  	before do
      owner_with_same_email = @owner.dup
      owner_with_same_email.email = @owner.email.upcase
      owner_with_same_email.save
  	end
  	it { should_not be_valid }
  end

  describe "when password is not present" do
    before { @owner.password = @owner.password_confirmation = " " }
    it { should_not be_valid }
  end

  describe "when password doesn't match confirmation" do
  	before { @owner.password_confirmation = "mismatch" }
  	it { should_not be_valid }
  end

  describe "when password confirmation is nil" do
  	before { @owner.password_confirmation = nil }
  	it { should_not be_valid }
  end

  describe "remember token" do
    before { @owner.save }
    its(:remember_token) { should_not be_blank }
  end

  describe "return value of authenticate method" do
  	before { @owner.save }
  	let(:found_owner) { Owner.find_by_email(@owner.email) }

  	describe "with valid password" do
  	  it { should == found_owner.authenticate(@owner.password) }
  	end

  	describe "with invalid password" do
  	  let(:owner_for_invalid_password) { found_owner.authenticate("invalid") }

  	  it { should_not == owner_for_invalid_password }
  	  specify { owner_for_invalid_password.should be_false }
  	end
  end

  describe "with a password that's too short" do
  	before { @owner.password = @owner.password_confirmation = "a" * 5 }
  	it { should be_invalid }
  end
end

