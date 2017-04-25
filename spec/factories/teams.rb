FactoryGirl.define do
  factory :team do
    name "team"
    users nil
    trait :teamA do
      name "teamA"
      #users [ create(:user, :userA), create(:user, :userB), create(:user, :userC) ]
    end
    trait :teamB do
      name "teamB"
      #users [ create(:user, :userD), create(:user, :userE), create(:user, :userF) ]
    end
  end
end
