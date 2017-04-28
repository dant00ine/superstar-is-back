FactoryGirl.define do
  factory :match do
    team1 ""
    team2 ""
    result ""
  end
end

def matchmaker match = nil
  team1 = nil
  team2 = nil
  case match
    when :a
      team1 = Team.new(users:[User.new(username:"a1", email:"test@a1.test", password: "test"),User.new(username:"a2", email:"test@a2.test", password: "test")])
      team2 = Team.new(users:[User.new(username:"b1", email:"test@b1.test", password: "test"),User.new(username:"b2", email:"test@b2.test", password: "test")])
    when :b
      team1 = Team.new(users:[User.new(username:"c1", email:"test@c1.test", password: "test"),User.new(username:"c2", email:"test@c2.test", password: "test")])
      team2 = Team.new(users:[User.new(username:"d1", email:"test@d1.test", password: "test"),User.new(username:"d2", email:"test@d2.test", password: "test")])
    when :c
      team1 = Team.new(users:[User.new(username:"e1", email:"test@e1.test", password: "test"),User.new(username:"e2", email:"test@e2.test", password: "test")])
      team2 = Team.new(users:[User.new(username:"f1", email:"test@f1.test", password: "test"),User.new(username:"f2", email:"test@f2.test", password: "test")])
    when nil
      team1 = Team.new(users:[User.new(username:"g1", email:"test@g1.test", password: "test"),User.new(username:"g2", email:"test@g2.test", password: "test")])
      team2 = Team.new(users:[User.new(username:"h1", email:"test@h1.test", password: "test"),User.new(username:"h2", email:"test@h2.test", password: "test")])
  end
  return Match.new(team1: team1, team2: team2, creator: User.new(username:"test1", email:"test@test1.test", password: "test"))
end
