require 'rails_helper'

describe ApiConstraints do
    let(:api_constraints_v1) { ApiConstraints.new(version: 1) }
    let(:api_constraints_v2) { ApiConstraints.new(version: 2, default: true)}

    describe "matches?" do

        it "returns true when the version matches the accept header" do
            request = double(host: 'api.superstar-is-back.dev',
                            headers: {'Accept' => 'application/vnd.superstar-is-back.v1' })
            puts request
            expect(api_constraints_v1.matches?(request)).to be_true
        end

        it "returns the default version when 'default' option is specified" do
            request = double(host: 'api.superstar-is-back.dev')
            puts request
            expect(api_constraints_v2.matches?(request)).to be_true
        end
    end
end
