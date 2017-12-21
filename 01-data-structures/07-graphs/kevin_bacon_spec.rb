require_relative 'kevin_bacon'
include Rspec

require_relative 'kevin_bacon'
require_relative 'node'

Rspec.describe Graph,type: Class do
  let(:graph1) {Graph.new(1) }

  describe "#find_kevin_bacon" do
    it "finds actor links in films to kevin bacon from starting film"
      test_start = george_clooney
      expect(test_start.find_kevin_bacon(start).to eq "Six degrees or less: Ocean's Eleven, The Departed, A Few Good Men"
    end

    it "returns message that linking films were not found" do
      test2_start = burt_reynolds
      expect(test2_start.find_kevin_bacon(test2_start).to eq "Linking films not found"
    end
  end
end

