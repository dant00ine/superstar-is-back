require 'rails_helper'

RSpec.describe Team, type: :model do
  context "is valid, it" do
    before(:example) do
      @team = team_building
    end
    it "saves" do
      expect(@team).to be_valid
    end
    it "allows getting of all players" do
      expect(@team.users.length).to eql(3)
    end
    it "allows getting of all matches" do
      teamA = team_building :a
      teamB = team_building :b
      teamC = team_building :c
      user = User.new(username:"test22", email:"test@test1.test", password: "test")
      Match.create(team1:teamA, team2:@team, creator:user)
      Match.create(team1:teamB, team2:@team, creator:user)
      Match.create(team1:@team, team2:teamC, creator:user)
      matches = @team.matches
      expect(matches.length).to eql(3)
      expect(matches[0].instance_of? Match).to be true
    end
    it "allows getting of all opponents" do
      teamA = team_building :a
      teamB = team_building :b
      teamC = team_building :c
      user = User.new(username:"test22", email:"test@test1.test", password: "test")
      Match.create(team1:teamA, team2:@team, creator:user)
      Match.create(team1:teamB, team2:@team, creator:user)
      Match.create(team1:@team, team2:teamB, creator:user)
      Match.create(team1:@team, team2:teamC, creator:user)
      opponents = @team.opponents
      expect(opponents.length).to eql(3)
      expect(opponents[0].instance_of? Team).to be true
    end
  end
  it "will not save with duplicate players" do
    team = Team.new(name:"testTeam")
    user = User.create(username:"c1", email:"test@c1.test", password: "test")
    team.users << [user, user]
    expect(team).to be_invalid
  end
end
