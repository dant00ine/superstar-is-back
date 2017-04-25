require 'rails_helper'

RSpec.describe Team, type: :model do
  it "saves if inputs are valid" do
    expect(build(:team)).to be_valid
  end
end
