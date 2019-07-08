require 'calc'

RSpec.shared_examples "basic functions" do
  it "can add"
  it "can subtrace"
  it "can multiply"
  it "can divide"
end

RSpec.describe Calc do
  context "normal mode" do
    include_examples "basic functions"
  end
  context "expert mode" do
    include_examples "basic functions"
    it "can draw graph"
  end
end
