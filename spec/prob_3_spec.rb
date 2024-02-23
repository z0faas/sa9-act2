require 'prob_3'

RSpec.describe StringWrapper do
  describe "#reverse" do
    it "reverses the string" do
      string = StringWrapper.new('Jonathan')
      expect(string.reverse).to eq('nahtanoJ')
    end
  end

  describe "#upcase" do
    it "converts the string to uppercase" do
      string = StringWrapper.new('jonathan')
      expect(string.upcase).to eq('JONATHAN')
    end
  end

  describe "#downcase" do
    it "converts the string to lowercase" do
      string = StringWrapper.new('JONATHAN')
      expect(string.downcase).to eq('jonathan')
    end
  end
end
