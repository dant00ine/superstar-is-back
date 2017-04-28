FactoryGirl.define do
  factory :stat, class: 'Stats' do
    user nil
    rebound 1
    assist 1
    blocks 1
    steals 1
    turn_overs 1
    points 1
    three_points 1
    free_throws 1
    level ""
    position ""
  end
end
