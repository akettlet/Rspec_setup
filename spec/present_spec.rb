require 'present'

RSpec.describe Present do
  context "When content is empty and you try to unwrap" do
    it "fails" do
      present = Present.new
      expect { present.unwrap }.to raise_error "No contents have been wrapped."
    end
  end

  context "When content is empty and you try to wrap" do
    it "returns the present" do
      present = Present.new
      expect(present.wrap("toys")).to eq "toys"
    end
  end

  context "When content is full and you try to wrap" do
    it "fails" do
      present = Present.new
      present.wrap("toys")
      expect { present.wrap("more toys") }.to raise_error "A contents has already been wrapped."
    end
  end

  context "When content is full and you try to unwrap" do
    it "returns the present" do
      present = Present.new
      present.wrap("toys")
      expect(present.unwrap).to eq "toys"
    end
  end
end
