require 'rails_helper'

RSpec.describe User, type: :model do
  context "with valid attributes" do
    it "should save" do
      expect(build(:user)).to be_valid
      expect(build(:user, username: "test2")).to be_valid
    end
  end
  it "shouldn't allow duplicate usernames" do
    create(:user)
    expect(build(:user)).to be_invalid
  end
  context "with invalid attributes" do
  end
end
