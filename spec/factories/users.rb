FactoryGirl.define do
  factory :user do
    username "test"
    email "test@test.test"
    password "testts"
    trait :userA do
      username "userA"
    end
    trait :userB do
      username "userB"
    end
    trait :userC do
      username "userC"
    end
    trait :userD do
      username "userD"
    end
    trait :userE do
      username "userE"
    end
    trait :userF do
      username "userF"
    end
  end
end
