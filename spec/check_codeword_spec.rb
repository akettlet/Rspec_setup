require 'check_codeword'

RSpec.describe "check_codeword method" do
  it "returns Correct! Come in. if the codeword is correct" do
    result = check_codeword("horse")
    expect(result).to eq "Correct! Come in."
  end

  it "returns Close, but nope. if the codeword is close" do
    result = check_codeword("home")
    expect(result).to eq "Close, but nope."
  end

  it "returns WRONG! if the codeword is wrong" do
    result = check_codeword("openup")
    expect(result).to eq "WRONG!"
  end
end
