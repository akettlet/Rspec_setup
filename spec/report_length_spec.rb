require 'report_length'

RSpec.describe "report_length" do
  it "returns This string was x characters long." do
    result = report_length("Andy")
    expect(result).to eq "This string was 4 characters long."
  end

  it "returns This string was x characters long." do
    result = report_length("This is a long sentence.")
    expect(result).to eq "This string was 24 characters long."
  end
end
