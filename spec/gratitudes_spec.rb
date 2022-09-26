require 'gratitudes'

RSpec.describe Gratitudes do
  it "it returns an array with the gratitude when one is added" do
    builder = Gratitudes.new
    expect(builder.add("Friends")).to eq ["Friends"]
  end

  it "it returns a string of gratitude if one is added" do
    builder = Gratitudes.new
    builder.add("Friends")
    expect(builder.format).to eq "Be grateful for: Friends"
  end

  it "it returns an array with the gratitude when one is added" do
    builder = Gratitudes.new
    builder.add("Friends")
    expect(builder.add("Family")).to eq ["Friends", "Family"]
  end

  it "it returns a string of gratitude if one is added" do
    builder = Gratitudes.new
    builder.add("Friends")
    builder.add("Family")
    expect(builder.format).to eq "Be grateful for: Friends, Family"
  end
end
