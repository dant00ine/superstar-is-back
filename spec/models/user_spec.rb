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
  context "relationships: User" do
    it "has teams" do
      user1 = build(:user)
      user2 = build(:user, :userA)
      team = Team.create(users:[user1, user2])
      user1.reload
      puts ""
      puts "-----"
      puts user1.teams
      puts team.users
      puts "-----"
      expect(user1.teams.length).to eql(1)
    end
    it "can access matches through teams" do
      user = User.new(username:"newTest", email:"newTest@test.test", password: "test")
      match1 = matchmaker
      match2 = matchmaker :a
      match3 = matchmaker :b
      match1.team1.users.push user
      match2.team2.users.push user
      puts "Test"
      puts user.teams
      puts user.teams[0]
      puts "Test"
      expect(user.matches.length).to eql(2)
    end
  end
end
