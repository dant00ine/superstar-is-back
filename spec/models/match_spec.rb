require 'rails_helper'

RSpec.describe Match, type: :model do
  before(:example) do
    @match = matchmaker
  end
  context "is valid" do
    it "saves" do
      expect(@match).to be_valid
    end
    it "allows getting of both teams" do
      expect(@match.teams.length).to eql(2)
    end
  end
  it "requires a creator" do
    @match.creator = nil
    expect(@match).to be_invalid
  end
  it "requires both teams" do
    @match.creator = nil
    expect(@match).to be_invalid
  end
end
