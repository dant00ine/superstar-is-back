FactoryGirl.define do
  factory :team do
    name "team"
    users nil
    trait :teamA do
      name "teamA"
      users {build_list :user, 3}
    end
    trait :teamB do
      name "teamB"
      users {build_list :user, 3}
    end
  end
end

def team_building team = nil
  user1 = nil
  user2 = nil
  user3 = nil
  case team
    when :a
      user1 = User.new(username:"a1", email:"test@a1.test", password: "test")
      user2 = User.new(username:"a2", email:"test@a2.test", password: "test")
      user3 = User.new(username:"a3", email:"test@a3.test", password: "test")
    when :b
      user1 = User.new(username:"b1", email:"test@b1.test", password: "test")
      user2 = User.new(username:"b2", email:"test@b2.test", password: "test")
      user3 = User.new(username:"b3", email:"test@b3.test", password: "test")
    when :c
      user1 = User.new(username:"c1", email:"test@c1.test", password: "test")
      user2 = User.new(username:"c2", email:"test@c2.test", password: "test")
      user3 = User.new(username:"c3", email:"test@c3.test", password: "test")
    when nil
      user1 = User.new(username:"test1", email:"test@test1.test", password: "test")
      user2 = User.new(username:"test2", email:"test@test2.test", password: "test")
      user3 = User.new(username:"test3", email:"test@test3.test", password: "test")
  end
  team = Team.new(name:"testTeam")
  team.users << [user1, user2, user3]
  return team
end
